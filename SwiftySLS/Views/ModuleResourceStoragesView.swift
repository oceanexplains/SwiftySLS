//
//  ModuleResourceStoragesView.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI

struct ModuleResourceStoragesView: View {
    @ObservedObject var module: Module
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(module.title)")
                .font(.headline)
            ForEach(module.resourceStorages) { resourceStorage in
                VStack(alignment: .leading) {
                    Text("Resource Storage")
                        .font(.subheadline)
                    ForEach(resourceStorage.resources) { resource in
                        ResourceRow(resource: resource)
                    }
                    Text("Charged: \(resourceStorage.isCharged ? "Yes" : "No")")
                }
            }
        }
    }
}
