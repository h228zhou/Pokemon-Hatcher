import SwiftUI

struct ContentView: View {
    @State private var hatchedPokemon: Pokemon? = nil
    @State private var isEggHatched = false
    
    var body: some View {
        VStack {
            Text("Pokemon Hatcher")
                .font(.title)
                .bold()
                .fontDesign(.rounded)
            Spacer()
            if isEggHatched, let pokemon = hatchedPokemon {
                Image(pokemon.name)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                    .transition(.scale)
                Text("Congratulations! You've hatched a \(pokemon.name)!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .bold()
                    .fontDesign(.rounded)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Type: \(pokemon.type)")
                            .padding()
                            .background(Color.accentColor)
                            .cornerRadius(15)
                            .fontDesign(.rounded)
                        Text("Height: \(pokemon.height, specifier: "%.2f") m")
                            .padding()
                            .background(Color.accentColor)
                            .cornerRadius(15)
                            .fontDesign(.rounded)
                    }
                    VStack(alignment: .leading) {
                        Text("Weight: \(pokemon.weight, specifier: "%.2f") kg")
                            .padding()
                            .background(Color.accentColor)
                            .cornerRadius(15)
                            .fontDesign(.rounded)
                        Text("Gender: \(pokemon.gender)")
                            .padding()
                            .background(Color.accentColor)
                            .cornerRadius(15)
                            .fontDesign(.rounded)
                    }
                }
                .padding()
                Button {
                    playSound(sound: pokemon.name, type: "mp3")
                } label: {
                    Image(systemName: "mic.square.fill")
                        .font(.largeTitle)
                }
                .padding()
            } else {
                Image("egg")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.8)) {
                            self.isEggHatched = true
                        }
                        self.hatchedPokemon = PokemonGenerator.generateRandomPokemon()
                        playSound(sound: "hatchSound", type: "mp3")
                    }
                Text("You've found an Egg!")
                    .font(.title)
                    .bold()
                    .fontDesign(.rounded)
            }
            Spacer()
            
            if isEggHatched {
                Button {
                    self.isEggHatched = false
                } label: {
                    Text("Hatch Another Egg")
                        .font(.title3)
                        .frame(width: 150, height: 80)
                        .bold()
                        .foregroundColor(.red)
                        .fontDesign(.rounded)
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
            } else {
                Text("Tap the Egg to Hatch!")
                    .fontDesign(.rounded)
            }
            Spacer()
        }
        .navigationTitle("Pokemon Hatcher")
    }
}

#Preview {
    ContentView()
}
