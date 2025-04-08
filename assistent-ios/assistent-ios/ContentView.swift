import SwiftUI

struct ContentView: View {
    @State private var inicial = ""
    @State private var contador = 0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "triangle")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Text("Jema")
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "line.3.horizontal")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            .padding(.top, 30)
            .padding(.horizontal, 25)
            
            Spacer()
            
            VStack {
                TextField(
                    "Digite um número:",
                    text: $inicial
                )
                .keyboardType(.decimalPad)
                .background(.gray)
                .padding(10)
                
                Text("Contador: \(String(contador))")
                
                HStack {
                    Button(action: somar) {
                        Text("Somar")
                    }
                    .padding(10)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Button(action: subtrair) {
                        Text("Subtrair")
                    }
                    .padding(10)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
            .padding(.horizontal, 30)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    private func somar() {
        if let valor = Int(inicial), contador == 0 {
            contador = valor
        }
        contador += 1
    }

    private func subtrair() {
        if let valor = Int(inicial), contador == 0 {
            contador = valor
        }
        contador -= 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
