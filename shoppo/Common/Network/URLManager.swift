//
//  Untitled.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

import Foundation

enum APIEnvironment {
    case development
    case production

    var baseURL: String {
        switch self {
        case .development:
            return "https://n1b40zmlj1.execute-api.eu-north-1.amazonaws.com/Dev"
        case .production:
            return "https://n1b40zmlj1.execute-api.eu-north-1.amazonaws.com"
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
        return "\(baseURL)/RegisterUser"
    }

    static var login: String {
        return "\(baseURL)/auth/login"
    }

    static var userProfile: String {
        return "\(baseURL)/user/profile"
    }

}
