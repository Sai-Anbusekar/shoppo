//
//  RegisterModel.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

struct RegisterRequest: Codable {
    let name: String
    let email: String
    let password: String
    let dob: String
    let phone: String
}

struct RegisterResponse: Codable {
    let statusCode: Int?
    let status: Bool
    let message: String
}
