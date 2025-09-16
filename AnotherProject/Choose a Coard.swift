//
//  Choose a Coard.swift
//  AnotherProject
//
//  Created by apprenant93 on 12/09/2025.
//

import SwiftUI

struct ChooseACard: View {
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            Spacer()
            HStack{
                Spacer()
                Spacer()
                VStack {
                    Spacer()
                    Spacer()
                    Image(systemName: "suit.spade.fill")
                        .imageScale(.medium)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                    Spacer()
                    Text("As de Pique")
                        .font(.footnote)
                        .foregroundStyle(.white)
                    Spacer()
                    Spacer()
                }
                .frame(width: 100, height: 170)
                .padding(5)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.black)
                        .shadow(
                            color: .black,
                            radius: 10
                        )
                }

                
                Spacer()
                VStack {
                    Spacer()
                    Spacer()
                    Image(systemName: "suit.heart.fill")
                        .imageScale(.medium)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                    Spacer()
                    Text("As de Coeur")
                        .font(.footnote)
                        .foregroundStyle(.white)
                    Spacer()
                    Spacer()
                }
                .frame(width: 100, height: 170)
                .padding(5)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.red)
                        .shadow(
                            color: .black,
                            radius: 10
                        )
                }
                Spacer()
                Spacer()
            }
            Spacer()
            
            HStack{
                Spacer()
                Spacer()
                VStack {
                    Spacer()
                    Spacer()
                    Image(systemName: "suit.diamond.fill")
                        .imageScale(.medium)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                    Spacer()
                    Text("As de Carreau")
                        .font(.footnote)
                        .foregroundStyle(.white)
                    Spacer()
                    Spacer()
                    
                }
                .frame(width: 100, height: 170)
                .padding(5)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.red)
                        .shadow(
                            color: .black,
                            radius: 10
                        )
                }
                
                Spacer()
                VStack {
                    Spacer()
                    Spacer()
                    Image(systemName: "suit.club.fill")
                        .imageScale(.medium)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                    Spacer()
                    Text("As de trèfle")
                        .font(.footnote)
                        .foregroundStyle(.white)
                    Spacer()
                    Spacer()

                }
                .frame(width: 100, height: 170)
                .padding(5)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.black)
                        .shadow(
                            color: .black,
                            radius: 10
                        )
                }
                Spacer()
                Spacer()
            }
            Spacer()
            Spacer()
            Spacer()
        }
        
    }
}

#Preview {
    ChooseACard()
}
