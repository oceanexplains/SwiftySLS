//
//  ContentView.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var station: Station
    @StateObject var roster: Roster
    
    init() {
        let sampleData = createSampleData()
        _station = StateObject(wrappedValue: sampleData.0)
        _roster = StateObject(wrappedValue: sampleData.1)
    }
    
    var body: some View {
        StationView(station: station)
    }
}

