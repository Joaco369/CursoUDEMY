//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 27/03/2024.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar.resizable().frame(width: 40, height: 40).padding(10)
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languaje)
                    .font(.subheadline)
                    .previewLayout(.fixed(width: 400, height: 60))
            }
            
            Spacer()
            if programmer.favorite {
                Image(systemName:
                        "star.fill").foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    RowView(programmer: Programmer(id: 1, name: "Joaquin", languaje: "Swift, Kotlin", avatar: Image(systemName: "person.fill"), favorite: true))
}
