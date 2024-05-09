//
//  imageView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 27/03/2024.
//

import SwiftUI

struct imageView: View {
    var body: some View {
        VStack {
            Image("fitness").resizable().padding(50).frame(width: 300, height: 300)
                .background(Color(.gray))
                .clipShape(Circle())
                .overlay(Circle().stroke(Color .orange, lineWidth: 4))
            .shadow(color: Color .black, radius: 5)
            
            Image(systemName: "soccerball").resizable().frame(width: 300, height: 300)
                .background(Color(.green))
                .clipShape(Circle())
                .overlay(Circle().stroke(Color .green, lineWidth: 4))
            .shadow(color: Color .black, radius: 5)
        }
    }
}

#Preview {
    imageView()
}
