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
    
    @State var isPresented = false
    
    var body: some View {
        VStack(spacing: 20) {
            ColorView(color: Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255))
                .padding(.bottom, 40)
            
            ColorSliderView(color: .red, sliderValue: $redSliderValue, inputValue: $redInputValue, isPresented: $isPresented)
            ColorSliderView(color: .green, sliderValue: $greenSliderValue, inputValue: $greenInputValue, isPresented: $isPresented)
            ColorSliderView(color: .blue, sliderValue: $blueSliderValue, inputValue: $blueInputValue, isPresented: $isPresented)
            
            Spacer()
            
        }
        .padding()
        .background(Color(red: 1/255, green: 107/255, blue: 193/255))
        .onTapGesture {
            hideKeyboard()
        }
        .alert("Wrong format", isPresented: $isPresented, actions: {}) {
            Text("Enter number from 0 to 255")
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
