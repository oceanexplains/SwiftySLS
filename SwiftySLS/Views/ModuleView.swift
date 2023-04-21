//
//  ModuleView.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI


struct ModuleView: View {
    @ObservedObject var module: Module
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(module.title)
                .font(.headline)
            
            HStack {
                Text("Charged/Ready:")
                Text(module.allStoragesCharged ? "Yes" : "No")
            }
            
            HStack {
                Text("Activated:")
                Text(module.isActive ? "Yes" : "No")
            }
            
            ForEach(module.resourceStorages) { resourceStorage in
                ForEach(resourceStorage.resources) { resource in
                    VStack(alignment: .leading) {
                        Text(resource.type.rawValue)
                            .font(.subheadline)
                        
                        ProgressBar(
                            value: resource.currentAmount,
                            maxValue: resource.maxAmount,
                            backgroundColor: Color.gray.opacity(0.3),
                            foregroundColor: Color.blue
                        )
                        .frame(height: 10)
                    }
                }
            }
            
            ForEach(module.resourceStorages) { resourceStorage in
                ForEach(resourceStorage.resources) { resource in
                    ResourceRow(resource: resource)
                }
            }
            
            Button(action: {
                for i in 0..<module.resourceStorages.count {
                    for j in 0..<module.resourceStorages[i].resources.count {
                        module.resourceStorages[i].resources[j].currentAmount = module.resourceStorages[i].resources[j].maxAmount
                    }
                }
            }) {
                Text("Charge")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            if module.allStoragesCharged {
                Button(action: {
                    module.isActive.toggle()
                }) {
                    Text(module.isActive ? "Deactivate" : "Activate")
                        .padding()
                        .background(module.isActive ? Color.red : Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }
    }
}
