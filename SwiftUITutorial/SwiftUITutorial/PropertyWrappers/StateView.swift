//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 28/03/2024.
//

import SwiftUI

class UserData: ObservableObject {
    
   @Published var name = "Joaquin Villarreal"
   @Published var age = 19
}

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("El valor actual es \(value)")
                Button("Suma 1") {
                    value += 1
                }
                
                Text("My name is: \(user.name) and i have: \(user.age)")
                
                Button("Update Data") {
                    user.name = "Julian"
                    user.age = 20
                }

                NavigationLink(
                    destination: BindingView(value: $value, user: UserData()),
                    tag: 1,
                    selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
                
            }.navigationTitle("StateView")
        }
    }
}
#Preview {
    StateView().environmentObject(UserData())
}
