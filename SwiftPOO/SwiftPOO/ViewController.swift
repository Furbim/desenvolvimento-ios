//
//  ViewController.swift
//  SwiftPOO
//
//  Created by COTEMIG on 13/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let animal = Animal()
        animal.emitirSom()
    }
    
    class Animal{
        var nome: String = "Dias"
        var idade = 18
        
        func Animal(nome: String, idade: Int){
            self.nome = nome
            self.idade = idade
        }
        
        var gato = Gato().felino
        
        var cachorro = Cachorro().canino
        
        func emitirSom(){
        }
 
    }
    
    class Gato: Animal{
        let felino: Bool = true
        
        override func emitirSom(){
            print("MIAU")
        }
    }
    
    class Cachorro: Animal{
        let canino: Bool = true
        
        override func emitirSom(){
            print("AUAU")
        }
    }

}

