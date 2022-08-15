//
//  Mission.swift
//  Moonshot
//
//  Created by Jiaming Guo on 2022-08-15.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
