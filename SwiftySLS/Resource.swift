//
//  Resource.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

class Resource: ObservableObject, Hashable, Identifiable {
    let id = UUID()
    let type: ResourceType
    @Published var currentAmount: Double
    let maxAmount: Double
    init(type: ResourceType, currentAmount: Double, maxAmount: Double) {
        self.type = type
        self.currentAmount = currentAmount
        self.maxAmount = maxAmount
        
    }
    
    var isCharged: Bool {
        return currentAmount >= maxAmount
    }
    
    static func == (lhs: Resource, rhs: Resource) -> Bool {
        return lhs.type == rhs.type
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(currentAmount)
        hasher.combine(maxAmount)
        hasher.combine(type)
    }
}
