//
//  Example.swift
//  AnotherProject
//
//  Created by apprenant93 on 12/09/2025.
//

import SwiftUI

struct Example: View {
    var body: some View {
        Spacer()
        HStack {

            Image(systemName: "airpods.pro")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
        }
        HStack {
            VStack {
                Text(
                    "Les AirPods Pro offrent une qualité sonore incroyable avec la réduction active du bruit. Confortables et faciles à utiliser, ils sont parfaits pour tous vos besoins audio."
                )
                .foregroundColor(.gray)
                .font(.callout)
                .padding()
            }

        }
        Spacer()

        VStack {
            HStack {
                Spacer()
                Image(systemName: "cart.fill")
                    .imageScale(.large)
                    .foregroundStyle(.black)
                    .font(.largeTitle)
                Spacer()
                VStack(alignment: .leading) {
                    Text("AirPod Pro")
                        .font(.title)
                        .bold(true)
                    Text("249.99 €")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange)
                    .shadow(color: .gray ,
                            radius: 18)

                Spacer()

            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    Example()
}

