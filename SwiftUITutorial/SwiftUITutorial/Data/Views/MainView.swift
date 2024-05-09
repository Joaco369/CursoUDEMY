//
//  MainView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 27/03/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView().frame(height: 400)
                imageView().offset(y: -150)
                Divider().padding()
                ContentView()
            }
        }
    }
}

#Preview {
    MainView()
}
