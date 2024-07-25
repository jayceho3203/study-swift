//
//  TimeConversionView.swift
//  UnitConversionApp
//
//  Created by Jayce Ho on 24/07/2024.
//

import SwiftUI

enum TimeScale : String, CaseIterable {
    case second = "Seconds"
    case minute = "Minutes"
    case hour = "Hours"
    case day = "Days"
}

func toSecond(_ value: Double, from scale: TimeScale) -> Double{
    switch scale {
    case .second:
        return value
    case .minute:
        return value * 60
    case .hour:
        return value * 60 * 60
    case .day:
        return value * 24 * 60 * 60
    }
}

func fromSecond(_ value: Double, to scale: TimeScale) -> Double {
    switch scale {
    case .second:
        return value
    case .minute:
        return value / 60
    case .hour:
        return value / (60 * 60)
    case .day:
        return value / (60 * 60 * 24)
    }
}

struct TimeConversionView: View {
    @State private var inputValue = "0"
    @State private var inputUnit : TimeScale = .second
    @State private var outputUnit : TimeScale = .minute
    @FocusState private var isInputFocosed : Bool
    var outputValue : String {
        guard let inputDouble = Double(inputValue), !inputValue.isEmpty else {
            return "ENTER INPUT VALUE"
        }
        let secondValue = toSecond(inputDouble, from: inputUnit)
        let result = fromSecond(secondValue, to: outputUnit)
        
        return result.formatted()
    }
    var body: some View {
        NavigationStack {
            Form {
                Section("input"){
                    TextField ("Input Value", text: $inputValue)
                    .focused($isInputFocosed)
                    .keyboardType(.decimalPad)
                    .onTapGesture {
                        if inputValue == "0"{
                            inputValue = ""
                        }
                    }
                    .toolbar{
                        ToolbarItemGroup(placement: .keyboard) {
                            Button("Done"){
                                isInputFocosed = false
                            }
                        }
                    }
                    Picker("From", selection: $inputUnit) {
                        ForEach(TimeScale.allCases, id: \.self){ scale in
                            Text(scale.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section ("output"){
                    Picker("To", selection: $outputUnit){
                        ForEach(TimeScale.allCases, id: \.self){ scale in
                            Text(scale.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section("Result") {
                    Text(outputValue)
                }
            }
            .navigationTitle("Convert Time")
        }
    }
}

struct TimeConversionView_Previews: PreviewProvider {
    static var previews: some View {
        TimeConversionView()
    }
}
