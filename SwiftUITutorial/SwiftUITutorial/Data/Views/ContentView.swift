//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 27/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 20)
        {
            Text("Welcome to my First APP in SwiftUI!")
                .font(.title)
                .background(Color(.systemGray))
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray).padding()
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green).padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue).padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.orange).padding(80)
            }
            
            Spacer()
            
            HStack {
                Text("Hello my firend!")
                    .padding()
                    .background(Color(.systemGray))
                    
                Spacer()
                
                Text("hello Mather!")
                    .padding()
                    .background(Color(.systemGray))
            }
            
            Text("6")
            Text("7")
            Text("8")
            Text("9")
            Text("10")
            Text("11")
            Text("12")
            Text("13")
            Text("14")
            Text("15 ")
        }
        .background(Color(.purple))
    }
    
}

#Preview {
    ContentView()
}
