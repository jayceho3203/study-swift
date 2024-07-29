//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jayce Ho on 26/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("LinearGradient")
                .font(.largeTitle)
                .foregroundStyle(.yellow)
                .background(.red.gradient)
            
            HStack  {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(
                            LinearGradient(colors: [.purple, .blue, .green, .yellow, .orange, .red], startPoint: .topTrailing, endPoint: .bottomLeading))
                        .frame(width: 150, height: 150)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(
                            LinearGradient (stops: [
                                Gradient.Stop(color: .green, location: 0.25),
                                Gradient.Stop(color: .yellow, location: 0.75)
                            ], startPoint: .top, endPoint: .bottom))
                            .frame(width: 150, height: 150)
                
            }
            Text("Radial Gradient")
                .font(.largeTitle)
                .background(
                    RadialGradient(colors: [.purple, .indigo, .blue, .green, .yellow, .orange, .red], center: .bottom, startRadius: 0, endRadius: 100)
                
                )
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        RadialGradient(colors: [.yellow, .green, .blue, .purple], center: .center, startRadius: 20, endRadius: 70)
                    ).frame(width: 150, height: 150)
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        RadialGradient(colors: [.yellow, .green, .blue, .purple], center: .init(x: 0.2, y: 0.8), startRadius: 20, endRadius: 70)
                    ).frame(width: 150, height: 150)
            }
            
            Text("Angular Gradient")
                .font(.largeTitle)
                .background(
                    AngularGradient(colors: [.yellow, .green, .blue, .purple], center: .center, startAngle: .degrees(90), endAngle: .degrees(360))
                )
            HStack{
                Circle()
                    .fill(
                        AngularGradient(
                                gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.8475437164306641, green: 0.5595436096191406, blue: 0.12754346430301666, alpha: 1)), location: 0.25),
                            .init(color: Color(#colorLiteral(red: 0.45098039507865906, green: 0.45098039507865906, blue: 0.45098039507865906, alpha: 1)), location: 0.75)]),
                                center: UnitPoint(x: 0.5, y: 0.5)
                              ))
                    .frame(width: 150)
                Circle()
                    .fill(
                        AngularGradient(colors: [.green, .indigo, .yellow, .white], center: .center, startAngle: .degrees(30), endAngle: .degrees(330))
                    )
                    .frame(width: 150, height: 150)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
