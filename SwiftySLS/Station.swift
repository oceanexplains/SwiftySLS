//
//  Station.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation


class Station: ObservableObject {
    let id = UUID()
    @Published var modules: [Module]
    @Published var roster: Roster
    
    init(modules: [Module], roster: Roster) {
        self.modules = modules
        self.roster = roster
    }
    
    var totalResources: [ResourceType: Double] {
        var totals: [ResourceType: Double] = [:]
        
        for module in modules {
            for resourceStorage in module.resourceStorages {
                for resource in resourceStorage.resources {
                    if let currentTotal = totals[resource.type] {
                        totals[resource.type] = currentTotal + resource.currentAmount
                    } else {
                        totals[resource.type] = resource.currentAmount
                    }
                }
            }
        }
        
        return totals
    }
}
