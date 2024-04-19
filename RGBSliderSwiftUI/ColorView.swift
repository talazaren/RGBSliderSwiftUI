//
//  ColorView.swift
//  RGBSliderSwiftUI
//
//  Created by Tatiana Lazarenko on 4/19/24.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundStyle(color)
            .frame(width: 350, height: 150)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
    }
}

#Preview {
    ColorView(color: .blue)
}
