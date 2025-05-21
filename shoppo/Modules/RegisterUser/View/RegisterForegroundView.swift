//
//  RegisterForegroundView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

import SwiftUI
import Foundation

struct RegisterForegroundView: View {
    
    @ObservedObject var viewModel: RegisterViewModel

    
    @State private var selectedDate: Date = Date()
    @State private var showDatePicker = false
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var dob = ""
    @State private var mobileNumber = ""
    @State private var isLoading = false
    @State private var errorMessage: String?
    @State private var successMessage: String?
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    
    
    // Date formatter for showing date in text field style
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        ZStack {
            RegisterBackgroundView()
            VStack {
                Text("Create \nAccount")
                    .font(.titleFont(size: .largeTitle))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Image("registerCamera")
                    .frame(width: 90, height: 90)
                    .frame(maxWidth: .infinity, alignment: .leading)
                   
                
                
                TextField("name", text: $name)
                    .keyboardType(.namePhonePad)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(25)
                    
                    
                
                
                Button(action: {
                    showDatePicker.toggle()
                }) {
                    HStack {
                        
                        TextField("Date of Birth", text: $dob)
                            
                            .disabled(true)

                            
                        
                    }
                    
                }
                .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(25)
                    
                
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(25)
                    .padding(.bottom, 8)
                
                HStack {
                    SecureField("Password", text: $password)
                        .padding()
                    Image(systemName: "eye.slash")
                        .padding(.trailing)
                }
                .background(Color(.systemGray6))
                .cornerRadius(25)
                .padding(.bottom, 8)
                
                HStack {
                    Image("flag") // Replace with actual flag image
                    Image(systemName: "chevron.down")
                    Divider().frame(height: 20)
                    TextField("Your number", text: $mobileNumber)
                        .keyboardType(.numberPad)
                    
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(25)
                

                
                
                Button(action: {
                    viewModel.presenter?.registerUser(name: name, email: email, password: password, dob: dob, phone: mobileNumber)
                }) {
                    Text("Create account")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(12)
                } .padding(.horizontal, 30)
                    .padding(.top, 30)
                Button(action: {
                    // Navigate or perform action
                }) {
                    Text("Cancel")
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity)
                        .padding()
                } .padding(.horizontal, 20)
                
            }.padding(.horizontal, 20)
                .sheet(isPresented: $showDatePicker) {
                    VStack {
                        HStack {
                            Button("Done") {
                                dob = dateFormatter.string(from: selectedDate)
                                showDatePicker = false
                            }
                            Spacer()
                            Button("Cancel") {
                                showDatePicker = false
                            }
                        }
                        .padding(.horizontal, 20)
                        DatePicker(
                            "Select DOB",
                            selection: $selectedDate,
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(WheelDatePickerStyle())
                        .labelsHidden()
                        
                    }
                    .presentationDetents([.height(300)]) // Optional
                }
            if viewModel.showAlert {
                CustomAlertView(title: viewModel.alertTitle, message: viewModel.message) {
                    viewModel.showAlert = false
                }
                .transition(.scale)
            }

        }
    }
    
}



extension RegisterForegroundView: RegisterViewProtocol {
    
    func showLoading() {
        isLoading = true
    }
    
    func hideLoading() {
        isLoading = false
    }
    func showSuccess(message: String) {
        self.successMessage = message
        alertTitle = "Success!"
        alertMessage = message
        viewModel.showAlert.toggle()
    }
    func showError(error: String) {
        self.errorMessage = "❌ \(error)"
        alertTitle = "Error!"
        alertMessage = error
        viewModel.showAlert.toggle()
    }
    
}

#Preview {
    RegisterForegroundView(viewModel: RegisterViewModel())
}
