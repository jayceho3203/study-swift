//
//  HomeView.swift
//  UnitConversionApp
//
//  Created by Jayce Ho on 24/07/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    NavigationLink("Convert Temperature", destination: TemperatureConversionView())
                    NavigationLink("Convert Time", destination: TimeConversionView())
                    NavigationLink("Convert Length", destination: LengthConversionView())
                }
                
            }
            .navigationTitle("Unit conversion")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
