//
//  Plant.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

class Plant: ResourceAgent {
    var mass: Double
    
    init(mass: Double, rates: [ResourceType: Double]) {
        self.mass = mass
        super.init(rates: rates)
    }
}
