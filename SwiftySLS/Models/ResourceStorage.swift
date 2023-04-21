//
//  ResourceStorage.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

class ResourceStorage: ObservableObject, Identifiable, Hashable {
        let id = UUID()
        @Published var resources: [Resource]
        
        init(resources: [Resource]) {
                self.resources = resources
            }
        
        func charge() {
                for i in resources.indices {
                        resources[i].currentAmount = resources[i].maxAmount
                    }
            }
        
        var isCharged: Bool {
                return resources.allSatisfy { $0.isCharged }
            }
        
        func getResource(ofType type: ResourceType) -> Resource? {
                return resources.first(where: { $0.type == type })
            }
        
        func addResource(ofType type: ResourceType, amount: Double) {
                guard let index = resources.firstIndex(where: { $0.type == type }) else { return }
                resources[index].currentAmount += amount
            }
        
        func removeResource(ofType type: ResourceType, amount: Double) {
                guard let index = resources.firstIndex(where: { $0.type == type }) else { return }
                resources[index].currentAmount -= amount
            }
        
        func hasSufficientResources(requiredResources: [ResourceType: Double]) -> Bool {
                for (type, requiredAmount) in requiredResources {
                        guard let resource = getResource(ofType: type) else { return false }
                        if resource.currentAmount < requiredAmount {
                                return false
                            }
                    }
                return true
            }
        
        // Implement the hash function
        func hash(into hasher: inout Hasher) {
                hasher.combine(id)
            }
        
        // Implement the == function for the Equatable protocol
        static func == (lhs: ResourceStorage, rhs: ResourceStorage) -> Bool {
                return lhs.id == rhs.id
            }
}
