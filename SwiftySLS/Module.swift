//
//  Module.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

class Module: ObservableObject, Hashable, Identifiable {
    let id = UUID()
    var title: String
    @Published var resourceStorages: [ResourceStorage]
    @Published var agents: [ResourceAgent]
    @Published var isActive: Bool
    
    init(title: String, resourceStorages: [ResourceStorage], agents: [ResourceAgent], isActive: Bool) {
        self.title = title
        self.resourceStorages = resourceStorages
        self.agents = agents
        self.isActive = isActive
    }
    
    var allStoragesCharged: Bool {
        return resourceStorages.allSatisfy { $0.isCharged }
    }
    
    static func == (lhs: Module, rhs: Module) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(resourceStorages)
        hasher.combine(agents)
        hasher.combine(isActive)
    }
    
    func activate() {
        self.isActive = true
    }
    
    func run() {
        guard isActive else { return }
        
        for agent in agents {
            for (type, rate) in agent.rates {
                for resourceStorage in resourceStorages {
                    if let resource = resourceStorage.getResource(ofType: type) {
                        resourceStorage.removeResource(ofType: type, amount: rate * Double(resourceStorage.resources.count) * resource.maxAmount)
                    }
                }
            }
        }
        
        var hasSufficientResources = true
        for resourceStorage in resourceStorages {
            let requiredResources: [ResourceType: Double] = [:]
            if !resourceStorage.hasSufficientResources(requiredResources: requiredResources) {
                hasSufficientResources = false
                break
            }
        }
        
        if !hasSufficientResources {
            self.isActive = false
        }
    }
}
