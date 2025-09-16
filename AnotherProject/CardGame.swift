//
//  CardGame.swift
//  AnotherProject
//
//  Created by apprenant93 on 15/09/2025.
//

import SwiftUI

struct CardGame: View {
    @State var choice: String = "questionmark"

    var body: some View {
        HStack {
            Button(
                action: {
                    if choice != "suit.spade.fill" {
                        choice =  "suit.spade.fill"
                    } else {
                        choice = "questionmark"
                    }
                },
                label: {
                    VStack{
                        Image(systemName: "suit.spade.fill")
                        
                        Text("As de pique")
                         }
                    .fixedSize()
                    .frame(width: 100, height: 150)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(
                            radius: 10,
                            x: 8,
                            y: 8
                        )

                }
            )

            Button(
                action: {
                    if choice != "suit.heart.fill" {
                        choice =  "suit.heart.fill"
                    } else {
                        choice = "questionmark"
                    }
                },
                label: {VStack{
                    Image(systemName: "suit.heart.fill")
                    Text("As de coeur")
                     }
                .fixedSize()
                .frame(width: 100, height: 150)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(
                            radius: 10,
                            x: 8,
                            y: 8
                        )
                }
            )
        }
        VStack {
            Image(systemName: choice)
                .font(.largeTitle)
                .fixedSize()
                .frame(height: 50)
        }

        HStack {

            Button(
                action: {
                    if choice != "suit.diamond.fill" {
                        choice =  "suit.diamond.fill"
                    } else {
                        choice = "questionmark"
                    }
                },
                label: {
                    VStack{
                        Image(systemName: "suit.diamond.fill")
                        Text("As de carreau")
                         }
                    .fixedSize()
                    .frame(width: 100, height: 150)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(
                            radius: 10,
                            x: 8,
                            y: 8
                        )
                }
            )

            Button(
                action: {
                    if choice != "suit.club.fill" {
                        choice =  "suit.club.fill"
                    } else {
                        choice = "questionmark"
                    }
                },
                label: {
                    VStack{
                        Image(systemName: "suit.club.fill")
                        Text("As de trefle")
                         }
                        .fixedSize()
                        .frame(width: 100, height: 150)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(
                            radius: 10,
                            x: 8,
                            y: 8
                        )

                }
            )

        }
    }
}

#Preview {
    CardGame()
}
