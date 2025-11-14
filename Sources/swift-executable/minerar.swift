func minerar(_ picareta: String) -> [String:Int] {
    var qtdRecursoColetado = 0
    var recursoColetado = ""

    print("=================================")
    print("Escolha qual recurso você gostaria de minerar")
    print("1-pedra")
    print("2-ferro")
    print("3-aco")
    print("4-rubi")
    print("5-voltar")
    print("=================================\n")
    if let entrada = readLine(), let opcao = Int(entrada) {
        switch opcao {
        case 1:
            recursoColetado = "pedra"
            if picareta == "mao" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if picareta == "picareta de pedra" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else if picareta == "picareta de ferro" {
                qtdRecursoColetado = Int.random(in: 6...14)
            } else if picareta == "picareta de aco" {
                qtdRecursoColetado = Int.random(in: 12...24)
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)s")
        case 2:
            recursoColetado = "ferro"
            if picareta == "picareta de pedra" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if picareta == "picareta de ferro" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else if picareta == "picareta de aco" {
                qtdRecursoColetado = Int.random(in: 12...24)
            } else {
                print("Você não tem a ferramenta necessária, pegue a picareta de pedra.")
                recursoColetado = ""
                break
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)s")
        case 3:
            recursoColetado = "aco"
            if picareta == "picareta de ferro" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else if picareta == "picareta de aco" {
                qtdRecursoColetado = Int.random(in: 3...8)
            } else {
                print("Você não tem a ferramenta necessária, pegue a picareta de ferro.")
                recursoColetado = ""
                break
            }
            print("Você coletou \(qtdRecursoColetado) \(recursoColetado)s")
        case 4:
            recursoColetado = "rubi"
            if picareta == "picareta de aco" {
                qtdRecursoColetado = Int.random(in: 1...4)
            } else {
                print("Você não tem a ferramenta necessária, pegue a picareta de aço.")
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
