//
//  ContentView.swift
//  AnotherProject
//
//  Created by apprenant93 on 12/09/2025.
//

import SwiftUI

struct SwiftLanguage: View {
    var body: some View {
        VStack {
            HStack {
                Text("Swift Language")
                    .font(.largeTitle)
                    .bold(true)
                
                Image(systemName: "swift")
                    .imageScale(.large)
                    .foregroundStyle(.orange)
                    .font(.largeTitle)
            }
            
            HStack (alignment: .top, spacing: 100){
                VStack {
                    Text("Version 6.0.1")
                        .foregroundColor(.gray)
                        .font(.title3)
                }
                VStack {
                    Text("Since 2014")
                        .font(.title3)
                }
            }
            
        }
    }
}

#Preview {
    SwiftLanguage()
}
