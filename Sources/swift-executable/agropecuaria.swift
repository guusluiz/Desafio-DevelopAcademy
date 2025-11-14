func agropecuaria(_ foice: String) -> [String:Int] {
    var qtdRecursoColetado = 0
    var recursoColetado = ""

    print("=================================")
    print("Escolha qual recurso você gostaria de coletar")
    print("1-juta")
    print("2-algodão")
    print("3-lã")
    print("4-seda")
    print("5-voltar")
    print("=================================\n")
    if let entrada = readLine(), let opcao = Int(entrada) {
        switch opcao {
        case 1:
            recursoColetado = "juta"
            if foice == "mao" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if foice == "foice de pedra" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else if foice == "foice de ferro" {
                qtdRecursoColetado = Int.random(in: 6...14)
            } else if foice == "foice de aco" {
                qtdRecursoColetado = Int.random(in: 12...24)
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)s")
        case 2:
            recursoColetado = "algodão"
            if foice == "foice de pedra" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if foice == "foice de ferro" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else if foice == "foice de aco" {
                qtdRecursoColetado = Int.random(in: 12...24)
            } else {
                print("Você não tem a ferramenta necessária, pegue a foice de pedra.")
                recursoColetado = ""
                break
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)")
        case 3:
            recursoColetado = "lã"
            if foice == "foice de ferro" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if foice == "foice de aco" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else {
                print("Você não tem a ferramenta necessária, pegue a foice de ferro.")
                recursoColetado = ""
                break
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)")
        case 4:
            recursoColetado = "seda"
            if foice == "foice de aco" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else {
                print("Você não tem a ferramenta necessária, pegue a foice de aço.")
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
