func coletarMadeira(_ machado: String) -> [String:Int] {
    var qtdRecursoColetado = 0
    var recursoColetado = ""

    print("=================================")
    print("Escolha qual recurso você gostaria de coletar")
    print("1-galhos")
    print("2-madeira marrom")
    print("3-madeira branca")
    print("4-madeira azul")
    print("5-voltar")
    print("=================================\n")
    if let entrada = readLine(), let opcao = Int(entrada) {
        switch opcao {
        case 1:
            recursoColetado = "galhos"
            if machado == "mao" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if machado == "machado de pedra" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else if machado == "machado de ferro" {
                qtdRecursoColetado = Int.random(in: 6...14)
            } else if machado == "machado de aco" {
                qtdRecursoColetado = Int.random(in: 12...24)
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)")
        case 2:
            recursoColetado = "madeira marrom"
            if machado == "machado de pedra" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if machado == "machado de ferro" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else if machado == "machado de aco" {
                qtdRecursoColetado = Int.random(in: 12...24)
            } else {
                print("Você não tem a ferramenta necessária, pegue o machado de pedra.")
                recursoColetado = ""
                break
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)s")
        case 3:
            recursoColetado = "madeira branca"
            if machado == "machado de ferro" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if machado == "machado de aco" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else {
                print("Você não tem a ferramenta necessária, pegue o machado de ferro.")
                recursoColetado = ""
                break
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)s")
        case 4:
            recursoColetado = "madeira azul"
            if machado == "machado de aco" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else {
                print("Você não tem a ferramenta necessária, pegue o machado de aço.")
                recursoColetado = ""
                break
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)s")
        case 5:
            print("Voltando...")
        default:
            print("Opção inválida.")
        }
    }

    if recursoColetado.isEmpty {
        return [:]
    }

    return [recursoColetado: qtdRecursoColetado]
}
