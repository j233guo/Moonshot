//
//  GridView.swift
//  Moonshot
//
//  Created by Jiaming Guo on 2022-08-18.
//

import SwiftUI

struct GridView: View {
    let missions: [Mission]
    let astronauts: [String:Astronaut]
    
    let columns = [
        GridItem(.adaptive(minimum: 150, maximum: .infinity))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        MissionCard(mission: mission)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static let astronauts: [String:Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static var previews: some View {
        GridView(missions: missions, astronauts: astronauts)
    }
}
