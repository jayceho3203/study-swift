//
//  ContentView.swift
//  WeSplit
//
//  Created by Jayce Ho on 17/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocus : Bool
    
    var totalPerPerson : Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount * tipSelection / 100
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    
    var grandTotal : Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount * tipSelection / 100
        return checkAmount + tipValue
    }
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField ("Amount", value: $checkAmount, format: .currency(code:
                                                                                    Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocus)
                    
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach (2..<100) {
                            Text("\($0) people ")
                        }
                    
                    }
                    }
                    .pickerStyle(.menu)
                    .onAppear(){
                        print(numberOfPeople)

                
                }
                
                Section("How much do you want to tip?") {
                    Picker("Tip  Percentage", selection: $tipPercentage) {
                        ForEach (0..<101) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink)
                    .onAppear() {
                        print(tipPercentage)
                    }
                }
                
                Section ("Total amount") {
                    Text(grandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Amount per person") {
                    Text (totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
            }
            
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocus {
                    Button ("Done") {
                        amountIsFocus = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
