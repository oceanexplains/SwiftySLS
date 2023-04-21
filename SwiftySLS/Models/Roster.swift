//
//  Roster.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation


class Roster: ObservableObject {
    let id = UUID()
    @Published var astronauts: [Astronaut]
    
    init(astronauts: [Astronaut]) {
        self.astronauts = astronauts
    }
    
    func run(station: Station) {
        for astronaut in astronauts {
            for module in station.modules {
                for (type, rate) in astronaut.rates {
                    for resourceStorage in module.resourceStorages {
                        if resourceStorage.getResource(ofType: type) != nil {
                            resourceStorage.removeResource(ofType: type, amount: rate * astronaut.mass)
                        }
                    }
                }
            }
        }
    }
}
