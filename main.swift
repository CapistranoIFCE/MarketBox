//  main.swift
//  myProject
//
//************ MARKET BOX **************
//
//  Created by Davi Capistrano on 07/03/22.
//  Contributions Yago Marques / Milena Maia / Milena Alcantara

import Foundation

var dinheiroNaCarteira : Double = 0

var produtos: [(String, Double)] = [("Arroz", 12.5), ("Macarrão ", 2.0), ("Feijão", 12.5), ("Leite", 12.5), ("Pão", 12.5), ("Açúcar", 12.5), ("Sal", 12.5), ("Sabão em Pó", 12.5), ("Sabonete", 12.5)]

var listaSecundaria: [[(String, Double)]] = []

print("OLÁ, VAMOS AS COMPRAS? \nSEGUE A LISTA:\n")

print("[---------------------------------------]")
print("[                 LISTA!                ]")
print("[---------------------------------------] \n")

for produto in produtos {
    print("\(produto.0): \(produto.1)")
}

print("\n[-------------------------------------]")
print("[              VAMOS LÁ!              ]")
print("[-------------------------------------]")

print("\nPRIMEIRAMENTE ME TIRA UMA DÚVIDA\nDEPOIS DE VISUALIZAR ESSA LISTA, VOCE DESEJA ::\n\n 1 - ADICIONAR \n 2 - REMOVER \n 3 - PROSSEGUIR\n")


let menuOpcoes = getInt("QUAL OPÇÃO DESEJA ESCOLHER:")
switch menuOpcoes {
    
case 1:
    let num = getInt("Quantos itens deseja adicionar?")
    for _ in 0..<num{
        
        let thisItem = getString("Digite o nome do ITEM")
        let price = getDouble("Digite o preço do ITEM")
        produtos.append((thisItem, price))
        
    }
    print(produtos)
case 2:
    print("Quantos itens deseja remover?")
    let nomeProduto = getString("Qual nome do produto")
    var indexDoProduto: Int?
    for i in 0..<produtos.count{
        if produtos[i].0 == nomeProduto {
            indexDoProduto = i
        }
    }
    if let indexDoProduto = indexDoProduto {
        produtos.remove(at: indexDoProduto)
    }
    
    //                print("Quantos itens deseja remover?")
    //                let nomeProduto = getString("Qual nome do produto")
    //                for product in produtos {
    //                    if product.0 == nomeProduto {
    //                        produtos = produtos.filter({ object in object.0 != nomeProduto })
    //                    }
    //                }
    
    print(produtos)
    
default:
    print(" ")
    
}

dinheiroNaCarteira = getDouble("QUAL É O VALOR PARA NOSSAS COMPRAS?")


//**************************************************************************
// SE O VALOR FOR MENOR QUE AS COMPRAS, ELE PEDE PRA DIGITAR UM NOVO VALOR
//**************************************************************************

var valorTotal = 0.0

for produto in produtos {
    valorTotal += produto.1
}
print(valorTotal)

while (dinheiroNaCarteira < valorTotal) {
    print("\nDINHEIRO INSUFICIENTE\nDIGITE UM VALOR COMPATIVEL: \n")
    dinheiroNaCarteira = getDouble("DIGITE NOVO VALOR")
}

let valorRestante = dinheiroNaCarteira-valorTotal

print("\nR$ ", valorRestante , " VALOR RESTANTE PARA COMPRAS ADICIONAIS\n")

//*************************************************************************
// ADICIONAR ITEM POR RELEVANCIA (*) (**) (***)
// While para caso o valor seja compativel com a entrada. Ja imprime lista
//*************************************************************************


if dinheiroNaCarteira == valorTotal{
    print("\n[-------------------------------------]")
    print("[         SUA LISTA FINAL É!          ]")
    print("[-------------------------------------]\n")
    for produto in produtos {
        print("\(produto.0): \(produto.1)")
    }
    pause()
    print("\n")
}

let pessoas = getInt("QUANTAS PESSOA VÃO ADICIONAR ITENS?")


for i in 1...pessoas {
    print("\(i)º Pessoa do grupo")
    var otherItem = true
    var saldo = valorRestante/Double(pessoas)
    while otherItem {
        
        print("\nSALDO POR PESSOA É DE R$: " , valorRestante/Double(pessoas))
        
        let menuAdicionar = getInt("Quer adicionar um item? \n1 - SIM\n2 - NÃO")
        switch menuAdicionar {
        case 1:
                var thisItem = String()
                var price = Double()
                print(saldo)
                thisItem = getString("\nQual o nome deste item?")
                price = getDouble("\nQual o valor deste item: \(thisItem)?")
                if price <= saldo {
                
                listaSecundaria.append([])
                listaSecundaria[i-1].append((thisItem, price))
                print("\nADICIONADO COM SUCESSO!!!")
                saldo -= price
                print(saldo)
            }
            else{
                print("Saldo invalido")
            }
        case 2:
            print("\n[-------------------------------------]")
            print("[         SUA LISTA FINAL É!          ]")
            print("[-------------------------------------]\n")
            for produto in produtos {
                print("\(produto.0): \(produto.1)")
            }
            
            print(listaSecundaria)
            print("\n")
            otherItem = false
            
            var valorSec = 0.0
            for produtos in listaSecundaria {
                for produto in produtos {
                    valorSec = produto.1
                }
            }
            valorTotal = valorTotal+valorSec
            print("[----------------------------------]")
            print("[O TOTAL DAS COMPRAS É DE: [", valorTotal,"]")
            print("[----------------------------------]\n")

            
        default:
            print(" ERROR ")
            
        }
        
        print(produtos)
        print(listaSecundaria)
        
    }

}
