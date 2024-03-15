import SwiftUI

struct ContentView: View {
    @State private var textInput: String = ""
    @State private var selectedOption: String = "Simple"
    
    @State private var resultText: String = ""
    
    var body: some View {
        VStack {
            TextField("Entrez la nuité", text: $textInput)
                .padding()
            
            Picker(selection: $selectedOption, label: Text("Choisissez une option")) {
                Text("Simple").tag("Simple")
                Text("Double").tag("Double")
                Text("Multiple").tag("Multiple")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Button(action: {
                
                
                resultText = "Texte saisi : \(textInput), Option sélectionnée : \(selectedOption)"
            }) {
                Text("Valider")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Text(resultText)
                .padding()
            
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

