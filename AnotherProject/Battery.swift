//
//  Battery.swift
//  AnotherProject
//
//  Created by apprenant93 on 15/09/2025.
//

import SwiftUI

struct Battery: View {

    @State private var offsetX: CGFloat = 0
    @State private var offsetY: CGFloat = 0
    @State private var pourcent: Double = 25

    //    var pourcentColor: Color { colorChange(pourcentNumb: Int(pourcent)) }
    var pourcentMessage: String { messageChange(degres: Int(pourcent)) }

    func randomOffset() {
        withAnimation(.spring()) {
            offsetX = CGFloat.random(in: -200...200)
            offsetY = CGFloat.random(in: -200...200)
        }
    }

    /*    func colorChange(pourcentNumb: Int) -> Color {
        switch pourcentNumb {
        case 0...25:
            return Color.red
        case 26...50:
            return Color.orange
        case 51...75:
            return Color.yellow
        case 76...100:
            return Color.green
        default:
            return Color.white
        }
    } */

    func messageChange(degres: Int) -> String {
        switch degres {
        case 0...25:
            return "battery.0"
        case 26...50:
            return "battery.25"
        case 51...75:
            return "battery.50"
        case 76...99:
            return "battery.75"
        case 100:
            return "battery.100percent.bolt"
        default:
            return "error"
        }
    }

    var pourcentColor: LinearGradient {

        let colorPosition = pourcent / 100

        let startColor = Color(
            red: 1 - colorPosition,
            green: colorPosition,
            blue: 0
        )

        let midColor =  Color(
            red: colorPosition,
            green: 1 - colorPosition,
            blue: 0
        )

        let gradientColors: [Color]

        gradientColors = [startColor, midColor]

        return LinearGradient(
            gradient: Gradient(colors: gradientColors),
            startPoint: .leading,
            endPoint: .trailing
        )
    }

    var body: some View {

        ZStack {
            pourcentColor
                .ignoresSafeArea()

            VStack {
                ZStack {

                    if pourcent < 100 {
                        Text("\(Int (pourcent)) %")
                            .foregroundStyle(.white)
                    } else {
                    }
                    Image(systemName: pourcentMessage)
                        .font(.system(size: 60))
                }
                .offset(x: offsetX, y: offsetY)
                .animation(
                    .spring(response: 0.1, dampingFraction: 0.01),
                    value: offsetX
                )

                .fixedSize()
                .frame(height: 100)

                Slider(value: $pourcent, in: 0...100, step: 0.1)
                    .padding()
                    .accentColor(.black)
                    .onChange(of: pourcent) {
                        if offsetX == offsetX { randomOffset() }

                    }

            }
        }
        .animation(.spring, value: pourcent)
    }
}

#Preview {
    Battery()
}
