//
//  Untitled.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

import Foundation
import Alamofire

enum APIEnvironment {
    case development
    case production
    
    var baseURL: String {
        switch self {
        case .development:
            return "https://n1b40zmlj1.execute-api.eu-north-1.amazonaws.com/dev"
        case .production:
            return "https://n1b40zmlj1.execute-api.eu-north-1.amazonaws.com/prod"
        }
    }
}

struct URLManager {
    
    static let environment: APIEnvironment = .development
    
    static var baseURL: String {
        return environment.baseURL
    }
    
    // MARK: - Endpoints
    static var register: String {
        return "\(baseURL)/register"
    }
    
    static var login: String {
        return "\(baseURL)/login"
    }
    
    static var userProfile: String {
        return "\(baseURL)/user/profile"
    }
    
}

struct HttpsHeader {
    
    static var withAccessToken: HTTPHeaders {
        return ["Content-Type": "application/json", "Authorization": "Bearer \(TokenManager.shared.accessToken ?? "")"]
    }
    
    static var withOutAccessToken: HTTPHeaders {
        return ["Content-Type": "application/json"]
    }
}
