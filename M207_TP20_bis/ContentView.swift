import SwiftUI

struct ContentView: View {
    @State private var nuite: String = ""
    @State private var selectedOption: String = "Simple"
    
    @State private var resultText: String = ""
    
    var body: some View {
        VStack {
            TextField("Entrez la nuité", text: $nuite)
                
            
            Text("choisir le type de chambre")
                .padding(.top, 30)
            
            Picker(selection: $selectedOption, label: Text("Choisissez une option")) {
                Text("Simple").tag("Simple")
                Text("Double").tag("Double")
                Text("Multiple").tag("Multiple")
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            Button(action: {
                
                
                resultText = "Texte saisi : \(nuite), Option sélectionnée : \(selectedOption)"
            }) {
                Text("Valider")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top, 30)
            
            Text(resultText)
                .padding()
                .foregroundColor(Color.green)
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

