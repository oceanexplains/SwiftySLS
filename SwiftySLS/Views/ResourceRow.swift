//
//  ResourceRow.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI

struct ResourceRow: View {
    @ObservedObject var resource: Resource
    
    var body: some View {
        HStack {
            Text(resource.type.rawValue.uppercased())
            Text("\(resource.currentAmount, specifier: "%.2f")")
        }
    }
}
