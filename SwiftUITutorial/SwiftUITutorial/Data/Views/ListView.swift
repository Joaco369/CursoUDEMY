//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Joaquin Villarreal on 27/03/2024.
//

import SwiftUI
    
final class ProgrammersModelData: ObservableObject {
    
    @Published var programmers = [Programmer(id: 0, name: "Joaquin", languaje: "Swift, Kotlin", avatar: Image(systemName: "person.fill"), favorite: true),
                                  Programmer(id: 1, name: "Julian", languaje: "C++", avatar: Image(systemName: "person"), favorite: false),
                                  Programmer(id: 2, name: "Tomas", languaje: "HTML, CSS", avatar: Image(systemName: "person.fill"), favorite: false),
                                  Programmer(id: 3, name: "Sandra", languaje: "Python, C++", avatar: Image(systemName: "person.fill"), favorite: true),
                                  Programmer(id: 4, name: "Fabio", languaje: "Swift", avatar: Image(systemName: "person.fill"), favorite: false)]
}
    
struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        
        NavigationView {
        
        VStack {
            Toggle(isOn: $showFavorites) {
                Text("Mostrar Favoritos")
            }.padding()
            
                List(filteredProgrammers, id: \.id) {
                    programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)) {
                        RowView(programmer: programmer)
                    }
                }
                .navigationTitle("Programmers")
                
            }
        }
    }
}
#Preview {
    ListView().environmentObject(ProgrammersModelData())
}
