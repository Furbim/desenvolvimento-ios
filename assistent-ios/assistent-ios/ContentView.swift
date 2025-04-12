import SwiftUI

struct ContentView: View {
    @State private var usuario = ""
    @State private var senha = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isLoggedIn: Bool = false  // Estado para controlar o login
    @State private var showAlert: Bool = false   // Estado para controlar o alerta
    @State private var welcomeMessage: String = "" // Mensagem de boas-vindas
    
    var body: some View {
        VStack {
            // Cabeçalho com o logo e ícones
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
            
            if isLoggedIn {

                Text("Bem-vindo, \(usuario)!")
                    .font(.title)
                    .padding()
                
            } else {

                VStack {
                    HStack {
                        Text("Nome de usuário:")
                        
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                    
                    TextField("Digite seu nome de usuário:", text: $usuario)
                        .padding(15)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray))
                        .foregroundColor(.black)
                    
                    HStack {
                        Text("Password:")
                        
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                    .padding(.top, 20)
                    
                    HStack {
                        if isPasswordVisible {
                            TextField("Digite sua Password:", text: $senha)
                                .padding(15)
                                .foregroundColor(.black)
                        } else {
                            SecureField("Digite sua Password:", text: $senha)
                                .padding(15)
                                .foregroundColor(.black)
                        }
                        
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                                .resizable()
                                .frame(width: 30, height: 20)
                                .foregroundColor(.gray)
                        }
                        .padding(15)
                    }
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray))
                    .foregroundColor(.white)
                    
                    Button("Entrar") {
                        login()
                    }
                    .foregroundColor(.white)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 40)
                    .background(.blue)
                    .cornerRadius(15.0)
                    .padding(20)
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Login"),
                            message: Text("Bem-vindo, \(usuario)!"),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                }
                .padding(.horizontal, 30)
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }

    private func login() {
        if usuario != "" && senha != "" {
            welcomeMessage = "Bem-vindo, \(usuario)!"
            isLoggedIn = true
            showAlert = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
