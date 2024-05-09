//
//  AuthenticationDataSource.swift
//  FireBaseTutorial
//
//  Created by Joaquin Villarreal on 03/04/2024.
//

import Foundation
import FirebaseAuth

struct User {
    let email: String
}

final class AuthenticationDataSource {
    
    private let facebookAuthentication = FacebookAuthentication()
    
    func getCurrentUser() -> User? {
        guard let email = Auth.auth().currentUser?.email else {
            return nil
        }
        return .init(email: email)
    }
    
    func loginWithFacebook(completionBlock: @escaping (Result<User, Error>) -> Void) {
        facebookAuthentication.loginFacebook { result in
            
            switch result {
                
            case .success(let accessToken):
                
                let credential = FacebookAuthProvider.credential(withAccessToken: accessToken)
                Auth.auth().signIn(with: credential) { AuthDataResult, error in
                    
                    if let error = error {
                        print("Error creating a new user \(error.localizedDescription)")
                        completionBlock(.failure(error))
                        return
                    }
                    let email = AuthDataResult?.user.email ?? "No email"
                    completionBlock(.success(.init(email: email)))
                }
                
            case .failure(let error):
                print("Error signIn with Facebook \(error.localizedDescription)")
                completionBlock(.failure(error))
            }
        }
    }
}
