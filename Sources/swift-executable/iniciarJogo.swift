func iniciaJogo() -> String {

    var nome: String = ""
    print("Bem vindo, aventureiro, aqui começamos sua jornada por coleta de recursos")
    print("no GrindSimulator.")
    print("Antes de tudo, digite o nome do seu personagem:")
    while nome.isEmpty {

        if let input = readLine(), !input.trimmingCharacters(in: .whitespaces).isEmpty {
            nome = input
        } else {
            print("Nome inválido. Por favor, digite um nome:")
        }
    }

    print()
    print("Sua jornada começa, **\(nome)**!")
    return nome
}
