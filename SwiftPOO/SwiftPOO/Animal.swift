//
//  Animal.swift
//  SwiftPOO
//
//  Created by COTEMIG on 27/05/25.
//

import Foundation

class Animal {
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    func descricao() -> String {
        return "\(nome) tem \(idade) anos."
    }
    
    func som() -> String {
        return "Som do Animal"
    }
}

