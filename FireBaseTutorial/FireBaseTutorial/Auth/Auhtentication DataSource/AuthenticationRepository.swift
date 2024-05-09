//
//  AuthenticationRepository.swift
//  FireBaseTutorial
//
//  Created by Joaquin Villarreal on 03/04/2024.
//

import Foundation

final class AuthenticationRepository{
    private let authenticationDataSource: AuthenticationDataSource
    
    init(authenticationDataSource: AuthenticationDataSource = AuthenticationDataSource()) {
        self.authenticationDataSource = authenticationDataSource
    }
}

func loginFacebook(completionBlock: @escaping(Result<User, Error>) -> Void) {
    authenticationDataSource.loginWithFacebook(completionBlock: completionBlock)
}
