//
//  LoginEntity.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//


struct LoginRequest: Codable {
    var email: String
    var password: String
}

struct LoginResponse: Codable {
    var accessToken: String?
    var refreshToken: String?
    var message: String
    var status: Bool
}
