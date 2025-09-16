//
//  SliderWeather.swift
//  AnotherProject
//
//  Created by apprenant93 on 15/09/2025.
//

import SwiftUI

struct SliderWeather: View {

    @State private var temp: Double = 25
    var weatherColor: Color { colorChange(degres: Int(temp)) }
    var weatherMessage: String { messageChange(degres: Int(temp)) }

    func colorChange(degres: Int) -> Color {
        switch degres {
        case 0...20:
            return Color.blue
        case 21...40:
            return Color.orange
        case 40...60:
            return Color.red
        default:
            return Color.white
        }
    }

    func messageChange(degres: Int) -> String {
        switch degres {
        case 0...20:
            return "On se pelle les nouilles ici!"
        case 21...40:
            return "C'est chill"
        case 40...60:
            return "je meurs de décès."
        default:
            return "error"
        }
    }

    var body: some View {

        ZStack {
            weatherColor
                .ignoresSafeArea()

            VStack {
                Text("\(Int (temp)) °C")
                Text(weatherMessage)
                Slider(value: $temp, in: 0...60, step: 1)
                    .padding()
            }
        }
    }
}

#Preview {
    SliderWeather()
}
