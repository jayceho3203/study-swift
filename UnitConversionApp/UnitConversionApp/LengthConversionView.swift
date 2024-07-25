//
//  LengthConversionView.swift
//  UnitConversionApp
//
//  Created by Jayce Ho on 24/07/2024.
//

import SwiftUI

enum LengthScale : String, CaseIterable {
    case meter = "Meters"
    case kilometer = "Kilometers"
    case feet = "Feet"
    case yard = "Yards"
    case mile = "Miles"
}

func toMeter(_ value : Double, from scale : LengthScale) -> Double{
    switch scale {
    case .meter:
        return value
    case .kilometer:
        return value * 1000
    case .feet:
        return value * 0.3048
    case .yard:
        return value * 0.9144
    case .mile:
        return value * 1609.344
    }
}

func fromMeter(_ value: Double, to scale: LengthScale) -> Double{
    switch scale {
    case .meter:
        return value
    case .kilometer:
        return value / 1000
    case .feet:
        return value / 0.3048
    case .yard:
        return value / 0.9144
    case .mile:
        return value / 1609.344
    }
}

struct LengthConversionView: View {
    @State private var inputUnit : LengthScale = .meter
    @State private var outputUnit : LengthScale = .feet
    @State private var inputValue = "0"
    @FocusState private var isInputFocused : Bool
    var outputValue : String {
        guard let inputDouble = Double(inputValue), !inputValue.isEmpty else {
            return "Enter input value"
        }
        let meterValue = toMeter(inputDouble, from: inputUnit)
        let result = fromMeter(meterValue, to: outputUnit)
        return result.formatted()
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
                        ForEach(LengthScale.allCases, id: \.self) { scale in
                            Text(scale.rawValue).tag(scale)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Output") {
                    Picker ("To", selection: $outputUnit){
                        ForEach(LengthScale.allCases, id: \.self){ scale in
                            Text(scale.rawValue).tag(scale)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text(outputValue)
                }
                
                
            }
            .navigationTitle("Convert Length")
            
        }
        
        
    }
}

struct LengthConversionView_Previews: PreviewProvider {
    static var previews: some View {
        LengthConversionView()
    }
}

