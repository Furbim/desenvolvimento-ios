//
//  ContentView.swift
//  assistent-ios
//
//  Created by COTEMIG on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var usuario = ""
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
                TextField("Digite seu nome:", text: $usuario)
                    .padding(15)
                    .background(.gray)
                    .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    
                    
                
            }.padding(.horizontal,30)
                
            
            Spacer()
            
        }.ignoresSafeArea()
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
