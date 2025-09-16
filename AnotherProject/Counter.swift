//
//  Counter.swift
//  AnotherProject
//
//  Created by apprenant93 on 15/09/2025.
//

import SwiftUI

struct Counter: View {
    
    @State var number: Int = 0
    
    var body: some View {
        
        ZStack {
            Color.brown
                .ignoresSafeArea()
            
            VStack {
                Text("Compteur : \(number) ")
                    .font(.title)
                    .foregroundColor(.white)
                HStack {
                    Button(action: {
                        number += 1
                    }, label: {
                        
                            Text("+")
                            .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 10,
                                x: 8,
                                y: 8)
                        
                    })
                    
                    Button(action: {
                        number -= 1
                    } , label: {
                        
                            Text("-")
                            .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10,
                                x: 8,
                                y: 8)
                    })
                }
                
            }}
    }}


#Preview {
    Counter()
}
