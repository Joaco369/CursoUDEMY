//
//  AuthViewModel.swift
//  FireBaseTutorial
//
//  Created by Joaquin Villarreal on 31/03/2024.
//

import Foundation
import FirebaseAnalytics
import FirebaseCore
import FirebaseAuth


class AuthViewModel {
    
    let email = ""
    let password = ""
    
    func getCredentials(email: String, password: String, _ completion: @escaping (Result<AuthDataResult?, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(result))
            }

        }
    }
    
    func singIn(email: String, password: String, _ completion: @escaping (Result<AuthDataResult?, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(result))
            }
        }
    }
    
}
