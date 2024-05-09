//
//  NetworkingProvider.swift
//  networking
//
//  Created by Joaquin Villarreal on 25/03/2024.
//

import Foundation
import Alamofire

final class NetworkingProvider {
    
    // Singleton
    static let shared = NetworkingProvider()
    
    private let kBaseUrl = "https://gorest.co.in/public-api/"
    private let kStatusOk = 200...299
    private let kToken = "43c23a4ecf4c0f46a7262083cc27fb2964aca7d996d772561c6067db2b6fa7f5"
    
    
    
    func getUser(id: Int, _ completion: @escaping (Result<User, AFError>) -> Void) {
        
        let url = "\(kBaseUrl)users/\(id)"
        
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: UserResponse.self, decoder: DateDecoder()) {
            response in
            
            if let error = response.error {
                completion(.failure(error))
            } else if let user = response.value?.data {
                completion(.success(user))
            }
        }
    }
    func addUser(user: NewUser, success: @escaping (_ user: User) -> (), failure: @escaping(_ error: Error?) -> ()) {
            
        let url = "\(kBaseUrl)users"
        
        let headers: HTTPHeaders = [.authorization(bearerToken: kToken)]
            
        AF.request(url, method: .post, parameters: user, encoder: JSONParameterEncoder.default, headers: headers).validate(statusCode: kStatusOk).responseDecodable (of: UserResponse.self, decoder: DateDecoder()) {
            response in
                
            if let user = response.value?.data, user.id != nil{
                success(user)
            } else {
                failure(response.error)
            }
        }
    }
    
    func updateUser(id: Int, user: NewUser, success: @escaping (_ user: User) -> (), failure: @escaping(_ error: Error?) -> ()) {
            
        let url = "\(kBaseUrl)users/\(id)"
        
        let headers: HTTPHeaders = [.authorization(bearerToken: kToken)]
            
        AF.request(url, method: .put, parameters: user, encoder: JSONParameterEncoder.default, headers: headers).validate(statusCode: kStatusOk).responseDecodable (of: UserResponse.self, decoder: DateDecoder()) {
            response in
                
            if let user = response.value?.data, user.id != nil{
                success(user)
            } else {
                failure(response.error)
            }
        }
    }
    
    func deleteUser(id: Int, success: @escaping () -> (), failure: @escaping(_ error: Error?) -> ()) {
            
        let url = "\(kBaseUrl)users/\(id)"
        
        let headers: HTTPHeaders = [.authorization(bearerToken: kToken)]
            
        AF.request(url, method: .delete, headers: headers).validate(statusCode: kStatusOk).response {
            response in
            
            if let error = response.error {
                failure(error)
            } else {
                success()
            }
        }
    }
}

