//
//  main.swift
//  Linha-de-comando
//
//  Created by Joffily on 06/02/17.
//  Copyright © 2017 Joffily. All rights reserved.
//

import Foundation

class Pessoa:CustomStringConvertible {
    var nome:String!
    var idade:Int!
    var description:String {
        return "Nome: \(self.nome), idade: \(self.idade)"
    }
    
    init(nome:String, idade:Int) {
        self.nome = nome
        self.idade = idade
    }
    
    
    func minhaIdade() -> Int {
        return self.idade * 2
    }
    
}

/*
 * Pessoa física
 */
class PessoaFisica:Pessoa {
    var cpf:String!
    
    init(nome:String, idade:Int, cpf:String) {
        super.init(nome: nome, idade: idade)
        self.cpf = cpf
    }
    
    override func minhaIdade() -> Int {
        return super.minhaIdade() * 2
    }
    
    override var description: String {
        return "Nome: \(self.nome) - idade: \(self.idade) - \(self.cpf)"
    }
    
}


var p = Pessoa(nome: "Joffily", idade: 10)
var pf = PessoaFisica(nome: "Marianna", idade: 25, cpf: "123456")

print(p.minhaIdade())
print(p)
print(pf)
print(pf.minhaIdade())


