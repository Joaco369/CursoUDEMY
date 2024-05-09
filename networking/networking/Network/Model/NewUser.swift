//
//  NewUser.swift
//  networking
//
//  Created by Joaquin Villarreal on 26/03/2024.
//

import Foundation

struct NewUser: Encodable {
    
    let name: String?
    let email: String?
    let gender: String?
    let status: String?
}
