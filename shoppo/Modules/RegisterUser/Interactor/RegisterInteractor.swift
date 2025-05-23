//
//  RegisterInteractor.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

import Alamofire
import Foundation

class RegisterInteractor: RegisterInteractorProtocol {
    weak var output: RegisterInteractorOutputProtocol?
    
    func register(request: RegisterRequest) {
        guard let url = URL(string: URLManager.register) else { return }
        
        let parameters: [String: Any] = [
            "name": request.name,
            "email": request.email,
            "password": request.password,
            "dob" : request.dob,
            "mobile" : request.phone,
            "location" : "EN"
        ]
        print("Full URL:", url)
        print("Parameters:", parameters)

        AF.request(url,
                   method: .post,
                   parameters: parameters,
                   encoding: JSONEncoding.default,
                   headers: HttpsHeader.withOutAccessToken)
        .validate(statusCode: 200..<500)  // Accept 400 to capture JSON response
        .responseDecodable(of: RegisterResponse.self) { response in
            switch response.result {
            case .success(let result):
                if result.status {
                    self.output?.didRegisterSuccess(response: result)
                } else {
                    self.output?.didRegisterFailure(error: result.message)
                }
            case .failure(let error):
                // Couldn't decode response or networking error
                print("❌ Error: \(error.localizedDescription)")
                self.output?.didRegisterFailure(error: "Something went wrong. Try again.")
            }
        }
    }
}
