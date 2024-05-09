//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 28/03/2024.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    
    @Binding var favorite: Bool
    
    var body: some View {
        VStack {
            programmer.avatar.resizable().frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color .black, lineWidth: 4))
                .shadow(color: Color .gray, radius: 5)
            
        HStack {
            Text(programmer.name).font(.largeTitle)
            
            Button {
                favorite.toggle()
            } label: {
                
                if favorite {
                    Image(systemName:
                        "star.fill").foregroundColor(.yellow)
                } else {
                    Image(systemName:
                            "star").foregroundColor(.black)
                }
            }
        }
            Text(programmer.languaje).font(.title)
        }
    }
}

#Preview {
    ListDetailView(programmer: Programmer(id: 1, name: "Joaquin", languaje: "Swift, Kotlin", avatar: Image(systemName: "person.fill"), favorite: true), favorite: .constant(false))
}
