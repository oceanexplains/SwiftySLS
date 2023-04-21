//
//  Global Fxns.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import Foundation

func createSampleData() -> (Station, Roster) {
    let waterResource = Resource(type: .water, currentAmount: 1000, maxAmount: 2000)
    let electricityResource = Resource(type: .electricity, currentAmount: 5000, maxAmount: 10000)
    let oxygenResource = Resource(type: .oxygen, currentAmount: 800, maxAmount: 2000)
    let carbonDioxideResource = Resource(type: .carbonDioxide, currentAmount: 0, maxAmount: 1000)

    let resourceStorage = ResourceStorage(resources: [waterResource, electricityResource, oxygenResource, carbonDioxideResource])

    let ratesAstronaut1: [ResourceType: Double] = [
        .water: 3.0,
        .electricity: 100,
        .oxygen: 0.8,
        .carbonDioxide: -0.8
    ]
    let astronaut1 = Astronaut(name: "Alice", mass: 70, metabolism: .fast, rates: ratesAstronaut1)

    let ratesAstronaut2: [ResourceType: Double] = [
        .water: 2.5,
        .electricity: 90,
        .oxygen: 0.7,
        .carbonDioxide: -0.7
    ]
    let astronaut2 = Astronaut(name: "Bob", mass: 80, metabolism: .slow, rates: ratesAstronaut2)

    let ratesPlant: [ResourceType: Double] = [
        .water: -0.1,
        .electricity: 0,
        .oxygen: -1.0,
        .carbonDioxide: 10.0
    ]
    let plant = Plant(mass: 10, rates: ratesPlant)

    let module1 = Module(title: "Habitation Module", resourceStorages: [resourceStorage], agents: [astronaut1, astronaut2], isActive: true)
    let module2 = Module(title: "Greenhouse Module", resourceStorages: [resourceStorage], agents: [plant], isActive: true)

    let station = Station(modules: [module1, module2], roster: Roster(astronauts: [astronaut1, astronaut2]))

    return (station, station.roster)
}
