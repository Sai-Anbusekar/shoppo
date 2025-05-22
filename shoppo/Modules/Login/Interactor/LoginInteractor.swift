//
//  LoginInteractor.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//


import Foundation
import Alamofire

class LoginInteractor: LoginInteractorProtocol {
    
    weak var output: LoginInteractorOutputProtocol?
    
    
    func login(user: LoginRequest) {
        
        guard let url = URL(string: URLManager.login) else { return }
        
        let parameters: [String: Any] = [
            "username": user.email,
            "password": user.password
        ]
        
      
        
        AF.request(url,
                   method: .post,
                   parameters: parameters,
                   encoding: JSONEncoding.default,
                   headers: HttpsHeader.withOutAccessToken)
        .validate(statusCode: 200..<500)
        .responseDecodable(of: LoginResponse.self) { response in
            switch response.result {
            case .success(let value):
                self.output?.didLoginSuccess(response: value)
            case .failure(let error):
                self.output?.didLoginFailure(error: error.localizedDescription)
            }
        }
    }
    
}
