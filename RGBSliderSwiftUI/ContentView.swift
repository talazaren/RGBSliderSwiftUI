//
//  ContentView.swift
//  RGBSliderSwiftUI
//
//  Created by Tatiana Lazarenko on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    @State var redSliderValue = Double.random(in: 0...255)
    @State var greenSliderValue = Double.random(in: 0...255)
    @State var blueSliderValue = Double.random(in: 0...255)
    
    @State var redInputValue = ""
    @State var greenInputValue = ""
    @State var blueInputValue = ""
    
    var body: some View {
        VStack(spacing: 20) {
            ColorView(color: Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255))
                .padding(.bottom, 40)
            
            ColorSliderView(color: .red, sliderValue: $redSliderValue, inputValue: $redInputValue)
            ColorSliderView(color: .green, sliderValue: $greenSliderValue, inputValue: $greenInputValue)
            ColorSliderView(color: .blue, sliderValue: $blueSliderValue, inputValue: $blueInputValue)
            
            Spacer()
            
        }
        .padding()
        .background(Color(red: 1/255, green: 107/255, blue: 193/255))
        .onTapGesture {
            hideKeyboard()
        }
    }
    
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

#Preview {
    ContentView()
}
