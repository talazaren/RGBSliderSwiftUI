//
//  ContentView.swift
//  RGBSliderSwiftUI
//
//  Created by Tatiana Lazarenko on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    @State var redSliderValue = 200.0
    @State var greenSliderValue = 200.0
    @State var blueSliderValue = 200.0
    
    var body: some View {
        VStack(spacing: 20) {
            ColorView(color: Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255))
                .padding(.bottom, 40)
            
            ColorSliderView(color: .red, sliderValue: $redSliderValue)
            ColorSliderView(color: .green, sliderValue: $greenSliderValue)
            ColorSliderView(color: .blue, sliderValue: $blueSliderValue)
            
            Spacer()
        }
        .padding()
        .background(Color(red: 1/255, green: 107/255, blue: 193/255))
    }
}

#Preview {
    ContentView()
}
