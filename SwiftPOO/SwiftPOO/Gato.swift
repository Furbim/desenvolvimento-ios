//
//  Gato.swift
//  SwiftPOO
//
//  Created by COTEMIG on 27/05/25.
//

import Foundation

class Gato: Animal {
    override func descricao() -> String {
        return "O gato \(nome) tem \(idade) anos."
    }
    override func som() -> String {
        return "MIAUUUUUUUUUUU!"
    }
}
