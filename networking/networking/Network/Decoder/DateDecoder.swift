//
//  DateDecoder.swift
//  networking
//
//  Created by Joaquin Villarreal on 26/03/2024.
//

import Foundation

final class DateDecoder: JSONDecoder {
    
    let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
        
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
        dateDecodingStrategy = .formatted(dateFormatter)
    }
}

