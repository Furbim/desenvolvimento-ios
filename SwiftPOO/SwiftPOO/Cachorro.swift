//
//  Cachorro.swift
//  SwiftPOO
//
//  Created by COTEMIG on 27/05/25.
//

import Foundation


class Cachorro: Animal {
    override func descricao() -> String {
        return "O cachorro \(nome) tem \(idade) anos."
    }
    override func som() -> String {
        return "AUAUAUAUAUUAAAUAUUAUAUUAUA!"
    }
}
