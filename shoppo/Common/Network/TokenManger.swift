//
//  TokenManger.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//


import Foundation

class TokenManager {
    static let shared = TokenManager()

    private let accessTokenKey = "accessToken"
    private let refreshTokenKey = "refreshToken"

    var accessToken: String? {
        get {
            UserDefaults.standard.string(forKey: accessTokenKey)
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: accessTokenKey)
        }
    }

    var refreshToken: String? {
        get {
            UserDefaults.standard.string(forKey: refreshTokenKey)
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: refreshTokenKey)
        }
    }
    
    func clearToken() {
        UserDefaults.standard.removeObject(forKey: accessTokenKey)
    }
}
