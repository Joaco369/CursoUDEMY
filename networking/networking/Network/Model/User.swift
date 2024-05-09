//
//  User.swift
//  networking
//
//  Created by Joaquin Villarreal on 25/03/2024.
//

import Foundation

/*{
 "code":200,
 "meta":null,
 "data":{
    "id":2139320,
    "name":"Bandhul Adiga V",
    "email":"adiga_bandhul_v@ohara.example",
    "gender":"male",
    "status":"active"
 }
}
*/
struct UserResponse: Decodable {
    
    let code: Int?
    let meta: Meta?
    let data: User?
}

struct User: Decodable {
    let id: Int?
    let name: String?
    let email: String?
    let gender: String?
    let status: String?
    let createdAt: Date?
    let updatedAt: Date?
}



struct Meta: Decodable {
    
}

