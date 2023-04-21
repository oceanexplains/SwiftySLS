//
//  StationView.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI


struct StationView: View {
    @ObservedObject var station: Station
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Total Resources")) {
                    ForEach(ResourceType.allCases) { resourceType in
                        HStack {
                            Text(resourceType.rawValue)
                            Spacer()
                            Text("\(station.totalResources[resourceType] ?? 0, specifier: "%.2f")")
                        }
                    }
                }
                
                Section(header: Text("Station")) {
                    ForEach(station.modules) { module in
                        ModuleView(module: module)
                            .padding(.vertical)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Space Station")
        }
    }
}
