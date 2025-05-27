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
    }
    
    @IBOutlet weak var img_view: UIImageView!
    
    @IBOutlet weak var btn_cachorro: UIButton!
    

    @IBOutlet weak var txt_idade: UITextField!
    
    @IBOutlet weak var btn_gato: UIButton!

    @IBOutlet weak var txt_nome: UITextField!
    
    @IBOutlet weak var btn_cadastrar: UIButton!
    
    var tipoAnimalSelecionado: String? = nil
    
    @IBAction func click_cachorro(_ sender: Any) {
        img_view.image = UIImage(named: "cachorro")
           btn_cadastrar.setTitle("Cadastrar Cachorro", for: .normal)
           tipoAnimalSelecionado = "cachorro"
    }
    @IBAction func click_gato(_ sender: Any) {
        img_view.image = UIImage(named: "gato")
            btn_cadastrar.setTitle("Cadastrar Gato", for: .normal)
            tipoAnimalSelecionado = "gato"
    }
    
    
    @IBAction func cadastro_click(_ sender: Any) {
        guard let nome = txt_nome.text, !nome.isEmpty,
                let idadeTexto = txt_idade.text, let idade = Int(idadeTexto),
                let tipo = tipoAnimalSelecionado else {
              print("Preencha todos os campos e selecione um tipo de animal.")
              return
          }
          
          var animal: Animal
          
          if tipo == "cachorro" {
              animal = Cachorro(nome: nome, idade: idade)
          } else {
              animal = Gato(nome: nome, idade: idade)
          }
          
          print(animal.descricao())
        print(animal.som())
    }
    
    
}

