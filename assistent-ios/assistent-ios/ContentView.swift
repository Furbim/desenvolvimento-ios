//
//  ContentView.swift
//  assistent-ios
//
//  Created by COTEMIG on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var contador = 0.0
    var body: some View {
        VStack{
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
                
            }.padding(.top, 30)
            .padding(.horizontal, 25)
            
            
            Spacer()
            
            VStack{
                Text("Contador: \(String(format: "%.3f", contador))")
                HStack{
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
                
            }.padding(.horizontal,30)
                
            
            Spacer()
            
        }.ignoresSafeArea()
        
        
    }
    
    private func somar(){
        contador += 0.1

    }

    private func subtrair(){
        contador -= 0.1
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
