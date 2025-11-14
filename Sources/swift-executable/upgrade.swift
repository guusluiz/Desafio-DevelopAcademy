func fazerUpgrade(picareta: String, machado: String, foice: String, inventario: inout [String: Int])
    -> (novaPicareta: String, novoMachado: String, novaFoice: String)
{

    var picaretaRetorno = picareta
    var machadoRetorno = machado
    var foiceRetorno = foice

    print("--- LOJA DE UPGRADES ---")
    print("Escolha Qual Item você quer melhorar")
    print("1- Picareta")
    print("2- Machado")
    print("3- Foice")
    print("4- Voltar")
    if let input = readLine(), let opcao = Int(input) {
        switch opcao {
        case 1:
            print("Sua picareta atual: **\(picareta)**\n")
            switch picareta {

            case "mao":
                let custoPedra = 15
                let custoGalhos = 10
                let custoJuta = 10
                print("Qual upgrade você quer fazer?")
                print(
                    "1- Picareta de Pedra (Custo: \(custoPedra) pedra, \(custoGalhos) galhos, \(custoJuta) juta)"
                )

                if let input = readLine(), input == "1" {
                    let pedras = inventario["pedra", default: 0]
                    let galhos = inventario["galhos", default: 0]
                    let juta = inventario["juta", default: 0]

                    if pedras >= custoPedra && galhos >= custoGalhos && juta >= custoJuta {
                        inventario["pedra"]! -= custoPedra
                        inventario["galhos"]! -= custoGalhos
                        inventario["juta"]! -= custoJuta
                        picaretaRetorno = "picareta de pedra"
                        print("\n[+] Upgrade concluído! Você criou uma 'picareta de pedra'.")
                    } else {
                        print("\nRecursos insuficientes.")
                        if pedras < custoPedra {
                            print("Faltam \(custoPedra - pedras) pedras.")
                        }
                        if galhos < custoGalhos {
                            print("Faltam \(custoGalhos - galhos) galhos.")
                        }
                        if juta < custoJuta {
                            print("Faltam \(custoJuta - juta) juta.")
                        }
                    }
                }

            case "picareta de pedra":
                let custoFerro = 15
                let custoMadeiraMarrom = 10
                let custoAlgodao = 10
                print(
                    "1- Picareta de Ferro (Custo: \(custoFerro) ferro, \(custoMadeiraMarrom) madeira marrom, \(custoAlgodao) algodão)"
                )

                if let input = readLine(), input == "1" {
                    let ferro = inventario["ferro", default: 0]
                    let madeira = inventario["madeira marrom", default: 0]
                    let algodao = inventario["algodão", default: 0]

                    if ferro >= custoFerro && madeira >= custoMadeiraMarrom
                        && algodao >= custoAlgodao
                    {
                        inventario["ferro"]! -= custoFerro
                        inventario["madeira marrom"]! -= custoMadeiraMarrom
                        inventario["algodão"]! -= custoAlgodao
                        picaretaRetorno = "picareta de ferro"
                        print("\n[+] Upgrade concluído! Você criou uma 'picareta de ferro'.")
                    } else {
                        print("\nRecursos insuficientes.")
                        if ferro < custoFerro {
                            print("Faltam \(custoFerro - ferro) ferro.")
                        }
                        if madeira < custoMadeiraMarrom {
                            print("Faltam \(custoMadeiraMarrom - madeira) madeira marrom.")
                        }
                        if algodao < custoAlgodao {
                            print("Faltam \(custoAlgodao - algodao) algodão.")
                        }
                    }
                }

            case "picareta de ferro":
                let custoAco = 15
                let custoMadeiraBranca = 10
                let custoLa = 10
                print(
                    "1- Picareta de Aço (Custo: \(custoAco) aço, \(custoMadeiraBranca) madeira branca, \(custoLa) lã)"
                )

                if let input = readLine(), input == "1" {
                    let aco = inventario["aco", default: 0]
                    let madeira = inventario["madeira branca", default: 0]
                    let la = inventario["lã", default: 0]

                    if aco >= custoAco && madeira >= custoMadeiraBranca && la >= custoLa {
                        inventario["aco"]! -= custoAco
                        inventario["madeira branca"]! -= custoMadeiraBranca
                        inventario["lã"]! -= custoLa
                        picaretaRetorno = "picareta de aco"
                        print("\n[+] Upgrade concluído! Você criou uma 'picareta de aco'.")
                    } else {
                        print("\nRecursos insuficientes.")
                        if aco < custoAco {
                            print("Faltam \(custoAco - aco) aço.")
                        }
                        if madeira < custoMadeiraBranca {
                            print("Faltam \(custoMadeiraBranca - madeira) madeira branca.")
                        }
                        if la < custoLa {
                            print("Faltam \(custoLa - la) lã.")
                        }
                    }
                }

            case "picareta de aco":
                print("Sua picareta já está no nível máximo!")

            default:
                print("Erro: picareta desconhecida.")
            }

        case 2:
            print("Seu machado atual: **\(machado)**\n")
            switch machado {

            case "mao":
                let custoPedra = 10
                let custoGalhos = 15
                let custoJuta = 10
                print(
                    "1- Machado de Pedra (Custo: \(custoGalhos) galhos, \(custoPedra) pedra, \(custoJuta) juta)"
                )

                if let input = readLine(), input == "1" {
                    let pedras = inventario["pedra", default: 0]
                    let galhos = inventario["galhos", default: 0]
                    let juta = inventario["juta", default: 0]

                    if pedras >= custoPedra && galhos >= custoGalhos && juta >= custoJuta {
                        inventario["pedra"]! -= custoPedra
                        inventario["galhos"]! -= custoGalhos
                        inventario["juta"]! -= custoJuta
                        machadoRetorno = "machado de pedra"
                        print("\n[+] Upgrade concluído! Você criou um 'machado de pedra'.")
                    } else {
                        print("\nRecursos insuficientes.")
                        if pedras < custoPedra {
                            print("Faltam \(custoPedra - pedras) pedras.")
                        }
                        if galhos < custoGalhos {
                            print("Faltam \(custoGalhos - galhos) galhos.")
                        }
                        if juta < custoJuta {
                            print("Faltam \(custoJuta - juta) juta.")
                        }
                    }
                }

            case "machado de pedra":
                let custoFerro = 10
                let custoMadeiraMarrom = 15
                let custoAlgodao = 10
                print(
                    "1- Machado de Ferro (Custo: \(custoFerro) ferro, \(custoMadeiraMarrom) madeira marrom, \(custoAlgodao) algodão)"
                )

                if let input = readLine(), input == "1" {
                    let ferro = inventario["ferro", default: 0]
                    let madeira = inventario["madeira marrom", default: 0]
                    let algodao = inventario["algodão", default: 0]

                    if ferro >= custoFerro && madeira >= custoMadeiraMarrom
                        && algodao >= custoAlgodao
                    {
                        inventario["ferro"]! -= custoFerro
                        inventario["madeira marrom"]! -= custoMadeiraMarrom
                        inventario["algodão"]! -= custoAlgodao
                        machadoRetorno = "machado de ferro"
                        print("\n[+] Upgrade concluído! Você criou um 'machado de ferro'.")
                    } else {
                        print("\nRecursos insuficientes.")
                        if ferro < custoFerro {
                            print("Faltam \(custoFerro - ferro) ferro.")
                        }
                        if madeira < custoMadeiraMarrom {
                            print("Faltam \(custoMadeiraMarrom - madeira) madeira marrom.")
                        }
                        if algodao < custoAlgodao {
                            print("Faltam \(custoAlgodao - algodao) algodão.")
                        }
                    }
                }
            case "machado de aco":
                print("Seu machado já está no nível máximo!")

            default:
                print("Erro: machado desconhecido.")
            }
        case 3:
            print("Sua foice atual: **\(foice)**\n")
            switch foice {

            case "mao":
                let custoPedra = 10
                let custoGalhos = 10
                let custoJuta = 15
                print(
                    "1- Foice de Pedra (Custo: \(custoJuta) juta, \(custoPedra) pedra, \(custoGalhos) galhos)"
                )

                if let input = readLine(), input == "1" {
                    let pedras = inventario["pedra", default: 0]
                    let galhos = inventario["galhos", default: 0]
                    let juta = inventario["juta", default: 0]

                    if pedras >= custoPedra && galhos >= custoGalhos && juta >= custoJuta {
                        inventario["pedra"]! -= custoPedra
                        inventario["galhos"]! -= custoGalhos
                        inventario["juta"]! -= custoJuta
                        foiceRetorno = "foice de pedra"
                        print("\n[+] Upgrade concluído! Você criou uma 'foice de pedra'.")
                    } else {
                        print("\nRecursos insuficientes.")
                        if pedras < custoPedra {
                            print("Faltam \(custoPedra - pedras) pedras.")
                        }
                        if galhos < custoGalhos {
                            print("Faltam \(custoGalhos - galhos) galhos.")
                        }
                        if juta < custoJuta {
                            print("Faltam \(custoJuta - juta) juta.")
                        }
                    }
                }

            case "foice de pedra":
                let custoFerro = 10
                let custoMadeiraMarrom = 10
                let custoAlgodao = 15
                print(
                    "1- Foice de Ferro (Custo: \(custoFerro) ferro, \(custoMadeiraMarrom) madeira marrom, \(custoAlgodao) algodão)"
                )

                if let input = readLine(), input == "1" {
                    let ferro = inventario["ferro", default: 0]
                    let madeira = inventario["madeira marrom", default: 0]
                    let algodao = inventario["algodão", default: 0]

                    if ferro >= custoFerro && madeira >= custoMadeiraMarrom
                        && algodao >= custoAlgodao
                    {
                        inventario["ferro"]! -= custoFerro
                        inventario["madeira marrom"]! -= custoMadeiraMarrom
                        inventario["algodão"]! -= custoAlgodao
                        foiceRetorno = "foice de ferro"
                        print("\n[+] Upgrade concluído! Você criou uma 'foice de ferro'.")
                    } else {
                        print("\nRecursos insuficientes.")
                        if ferro < custoFerro {
                            print("Faltam \(custoFerro - ferro) ferro.")
                        }
                        if madeira < custoMadeiraMarrom {
                            print("Faltam \(custoMadeiraMarrom - madeira) madeira marrom.")
                        }
                        if algodao < custoAlgodao {
                            print("Faltam \(custoAlgodao - algodao) algodão.")
                        }
                    }
                }

            case "foice de ferro":
                let custoAco = 10
                let custoMadeiraBranca = 10
                let custoLa = 15
                print(
                    "1- Foice de Aço (Custo: \(custoAco) aço, \(custoMadeiraBranca) madeira branca, \(custoLa) lã)"
                )

                if let input = readLine(), input == "1" {
                    let aco = inventario["aco", default: 0]
                    let madeira = inventario["madeira branca", default: 0]
                    let la = inventario["lã", default: 0]

                    if aco >= custoAco && madeira >= custoMadeiraBranca && la >= custoLa {
                        inventario["aco"]! -= custoAco
                        inventario["madeira branca"]! -= custoMadeiraBranca
                        inventario["lã"]! -= custoLa
                        foiceRetorno = "foice de aco"
                        print("\n[+] Upgrade concluído! Você criou uma 'foice de aco'.")
                    } else {
                        print("\nRecursos insuficientes.")
                        if aco < custoAco {
                            print("Faltam \(custoAco - aco) aço.")
                        }
                        if madeira < custoMadeiraBranca {
                            print("Faltam \(custoMadeiraBranca - madeira) madeira branca.")
                        }
                        if la < custoLa {
                            print("Faltam \(custoLa - la) lã.")
                        }
                    }
                }

            case "foice de aco":
                print("Sua foice já está no nível máximo!")

            default:
                print("Nível de foice desconhecido.")
            }

        case 4:
            print("Voltando...")

        default:
            print("Opção inválida.")
        }
    }
    return (picaretaRetorno, machadoRetorno, foiceRetorno)
}