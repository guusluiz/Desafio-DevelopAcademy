// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@main
struct swift_executable {
    static func main() {

        let nome = iniciaJogo()
        var inventario: [String: Int] = [:]
        var picaretaAtual = "mao"
        var machadoAtual = "mao"
        var foiceAtual = "mao"
        var opcao = 0

        while opcao != 6 {
            let espaco = readLine()
            print("=================================")
            print("O que gostaria de fazer \(nome)")
            print("1- Ver inventário")
            print("2- Minerar")
            print("3- Coletar madeira")
            print("4- Agropecuária")
            print("5- Upgrade")
            print("6- Fechar o GrindSimulator")
            print("=================================\n")
            if let input = readLine(),
                let inputOpcao = Int(input)
            {
                opcao = inputOpcao
                switch opcao {
                case 1:
                    mostrarInventario(inventario)
                case 2:
                    let itensColetados = minerar(picaretaAtual)
                    if !itensColetados.isEmpty {
                        atualizarInventario(itens: itensColetados, inventario: &inventario)
                    }
                case 3:
                    let itensColetados = coletarMadeira(machadoAtual)
                    if !itensColetados.isEmpty {
                        atualizarInventario(itens: itensColetados, inventario: &inventario)
                    }
                case 4:
                    let itensColetados = agropecuaria(foiceAtual)
                    if !itensColetados.isEmpty {
                        atualizarInventario(itens: itensColetados, inventario: &inventario)
                    }
                case 5:
                    let novasFerramentas = fazerUpgrade(
                        picareta: picaretaAtual,
                        machado: machadoAtual,
                        foice: foiceAtual,
                        inventario: &inventario
                    )
                    picaretaAtual = novasFerramentas.novaPicareta
                    machadoAtual = novasFerramentas.novoMachado
                    foiceAtual = novasFerramentas.novaFoice

                case 6:
                    print("Até a próxima, \(nome)!")
                default:
                    print("Opção inválida")
                }
            }
        }
    }
}
