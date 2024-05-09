//
//  FacebookAuthentication.swift
//  FireBaseTutorial
//
//  Created by Joaquin Villarreal on 03/04/2024.
//

import Foundation
import FacebookLogin

final class FacebookAuthentication{
    let loginManager = LoginManager()
    
    func loginFacebook(completionBlock: @escaping (Result<String, Error>) -> Void) {
        loginManager.logIn(permissions: ["email"], from: nil) { LoginManagerLoginResult, error in
            
            if let error = error {
                print("Error login with Facebook: \(error.localizedDescription)")
                completionBlock(.failure(error))
                return
            }
            let token = LoginManagerLoginResult?.token?.tokenString
            completionBlock(.success(token ?? "empty Token"))
        }
    }
}
