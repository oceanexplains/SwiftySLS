//
//  ResourceAgent.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

class ResourceAgent: ObservableObject, Hashable, Identifiable {
    let id = UUID()
    
    @Published var rates: [ResourceType : Double]
    
    static func == (lhs: ResourceAgent, rhs: ResourceAgent) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(rates)
    }
    
    init(rates: [ResourceType:Double]) {
        self.rates = rates
    }
}
