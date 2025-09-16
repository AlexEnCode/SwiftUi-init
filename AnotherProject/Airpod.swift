
import SwiftUI

struct Airpod: View {
    var body: some View {
        Spacer()
        HStack {

            Image(systemName: "airpod.gen3.right")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .foregroundStyle(.gray)
            Image(systemName: "airpod.gen3.left")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .foregroundStyle(.gray)

        }
        HStack {
            VStack {
                Text("Les AirPods Pro offrent une qualité sonore incroyable avec la réduction active du bruit. Confortables et faciles à utiliser, ils sont parfaits pour tous vos besoins audio.")
                    .foregroundColor(.gray)
                    .font(.callout)
                    .padding()
            }

        }
        Spacer()
        HStack{
            Spacer()
            Image(systemName: "cart.fill")
                .imageScale(.large)
                .foregroundStyle(.black)
                .font(.largeTitle)
            Spacer()
            VStack (alignment: .leading) {
                Text("AirPod Pro")
                    .font(.title)
                    .bold(true)
                Text("249.99 €")
                    .font(.footnote)
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(5)
        .background(Color.orange)
        .cornerRadius(8)
        .frame(width: 350, height: 100)
        .shadow(color: .gray ,
                radius: 20)
    }
}

#Preview {
    Airpod()
}
