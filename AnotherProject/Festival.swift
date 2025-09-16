//
//  Festival.swift
//  AnotherProject
//
//  Created by apprenant93 on 12/09/2025.
//

import SwiftUI

struct Festival: View {
    var body: some View {
        ZStack {
            // ajout image en background dans la ZStack
            Image("james")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            // frame
            VStack(alignment: .leading) {

                Spacer()
                Text("Music Festival")
                    .font(.largeTitle)
                Text("10 juillet 2025")
                    // darkGrey créé manuellement dans les Assets
                    .foregroundColor(.darkGrey)
                    .font(.title3)
                Spacer()
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                        .font(.title3)

                    Text("Place du Capitole Toulouse")
                        .font(.footnote)
                        .foregroundColor(.black)
                }
                Spacer()

            }
            // foregroundStyle(.ultraThinMaterial) pour effet flou
            .frame(width: 300, height: 300)
            .padding(5)
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.ultraThinMaterial)
                    .cornerRadius(60)
            }
        }
    }
}



#Preview {
    Festival()
}
