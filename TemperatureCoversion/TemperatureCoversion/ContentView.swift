//
//  ContentView.swift
//  TemperatureCoversion
//
//  Created by Jayce Ho on 23/07/2024.
//

import SwiftUI

enum TemperatureScale : String, CaseIterable {
    case celsius = "Celsius"
    case fahrenheit = "Farenheit"
    case kelvin = "Kelvin"
}

func toCelsius(_ value : Double, from scale : TemperatureScale) -> Double{
    switch scale {
    case .celsius:
        return value
    case .fahrenheit:
        return (value - 32) * 5/9
    case .kelvin:
        return value - 273.15
    }
}

func fromCelsius(_ value: Double, to scale: TemperatureScale) -> Double{
    switch scale {
    case .celsius:
        return value
    case .fahrenheit:
        return value * 9/5 + 32
    case .kelvin:
        return value + 273.15
    }
}

struct ContentView: View {
    @State private var inputUnit : TemperatureScale = .celsius
    @State private var outputUnit : TemperatureScale = .fahrenheit
    @State private var inputValue = "0"
    @FocusState private var isInputFocused : Bool
    var outputValue : Double {
        let inputDouble = Double(inputValue) ?? 0.0
        let celsiusValue = toCelsius(inputDouble, from: inputUnit)
        return fromCelsius(celsiusValue, to: outputUnit)
    }
    var body: some View {
        NavigationStack{
            Form {
                Section("Input") {
                    TextField("Value", text: $inputValue)
                    .keyboardType(.decimalPad)
                    .focused($isInputFocused)
                    .onTapGesture {
                        if inputValue == "0" {
                            inputValue = ""
                        }
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Spacer()
                            Button("Done"){
                                isInputFocused = false
                            }
                        }
                    }
                    
                    Picker("From", selection: $inputUnit ) {
                        ForEach(TemperatureScale.allCases, id: \.self) { scale in
                            Text(scale.rawValue).tag(scale)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Output") {
                    Picker ("To", selection: $outputUnit){
                        ForEach(TemperatureScale.allCases, id: \.self){ scale in
                            Text(scale.rawValue).tag(scale)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text(outputValue.formatted())
                }
            }
            .navigationTitle("Quy đổi nhiệt độ")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
