//
//  ProgressBarView.swift
//  SwiftySLS
//
//  Created by Tomer Zed on 4/21/23.
//

import SwiftUI

struct ProgressBar: View {
    var value: Double
    var maxValue: Double
    var backgroundColor: Color
    var foregroundColor: Color

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .foregroundColor(backgroundColor)
                Rectangle()
                    .frame(width: geometry.size.width * CGFloat(value / maxValue), height: geometry.size.height)
                    .foregroundColor(foregroundColor)
            }
            .cornerRadius(8)
        }
    }
}
