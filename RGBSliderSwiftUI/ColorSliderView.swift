//
//  ColorSliderView.swift
//  RGBSliderSwiftUI
//
//  Created by Tatiana Lazarenko on 4/19/24.
//

import SwiftUI

struct ColorSliderView: View {
    let color: Color
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted()).foregroundStyle(.white)
                .frame(width: 40)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
        }
    }
}

#Preview {
    ColorSliderView(color: .red, sliderValue: .constant(100.0))
}
