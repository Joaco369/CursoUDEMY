//
//  EnviromentView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 30/03/2024.
//

import SwiftUI

struct EnviromentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

#Preview {
    EnviromentView().environmentObject(UserData())
}
