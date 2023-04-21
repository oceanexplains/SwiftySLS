//
//  Astronaut.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

class Astronaut: ResourceAgent {
    var name: String
    var mass: Double
    var metabolism: Metabolism
    
    init(name: String, mass: Double, metabolism: Metabolism, rates: [ResourceType: Double]) {
        self.name = name
        self.mass = mass
        self.metabolism = metabolism
        super.init(rates: rates)
    }
}
