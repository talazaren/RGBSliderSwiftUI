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
    @Binding var inputValue: String
    
    @FocusState var isFocused: Bool
    
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted()).foregroundStyle(.white)
                .frame(width: 40)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
            
            TextField(lround(sliderValue).formatted(), text: $inputValue)
                .frame(width: 60)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.trailing)
                .onChange(of: inputValue) { _, newValue in
                    if let value = Double(newValue) {
                        sliderValue = value
                    }
                }
                .keyboardType(.numberPad)
                .focused($isFocused)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isFocused = false
                        }
                    }
                }
        }
    }
}

#Preview {
    ColorSliderView(color: .red, sliderValue: .constant(100.0), inputValue: .constant("100"))
}
