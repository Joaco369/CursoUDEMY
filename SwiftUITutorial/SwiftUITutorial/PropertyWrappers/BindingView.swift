//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 28/03/2024.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        
        VStack {
            Button("Suma 2") {
                value += 2
            }
            Button("Update Data"){
                user.name = "Joaquin Villarreal"
                user.age = 19
            }
            NavigationLink(
                destination: EnviromentView(),
                tag: 1,
                selection: $selection) {
                Button("Ir a EnviromentView") {
                    selection = 1
                }
            }
        }
    }
}

#Preview {
    BindingView(value: .constant(5), user: UserData())
}
