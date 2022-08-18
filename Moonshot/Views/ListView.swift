//
//  ListView.swift
//  Moonshot
//
//  Created by Jiaming Guo on 2022-08-18.
//

import SwiftUI

struct ListView: View {
    let missions: [Mission]
    let astronauts: [String:Astronaut]
    
    var body: some View {
        List {
            ForEach(missions) {mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding()
                        Text(mission.displayName)
                            .font(.headline)
                    }
                }
            }
            .listRowBackground(Color.darkBackground)
            .foregroundColor(.white)
        }
        .listStyle(.plain)
    }
}

struct ListView_Previews: PreviewProvider {
    static let astronauts: [String:Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static var previews: some View {
        ListView(missions: missions, astronauts: astronauts)
    }
}
