//
//  ResourceType.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

enum ResourceType: String, CaseIterable, Identifiable {
    case water = "Water"
    case electricity = "Electricity"
    case oxygen = "Oxygen"
    case carbonDioxide = "Carbon Dioxide"
    
    var id: String { self.rawValue }
}
