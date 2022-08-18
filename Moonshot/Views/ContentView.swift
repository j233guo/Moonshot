//
//  ContentView.swift
//  Moonshot
//
//  Created by Jiaming Guo on 2022-08-10.
//

import SwiftUI

struct ContentView: View {
    @State private var displayAsGrid = false
    
    let astronauts: [String:Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            Group {
                if displayAsGrid {
                    GridView(missions: missions, astronauts: astronauts)
                } else {
                    ListView(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .preferredColorScheme(.dark)
            .background(.darkBackground)
            .toolbar {
                Button {
                    displayAsGrid.toggle()
                } label: {
                    Text(displayAsGrid ? "List" : "Grid")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
