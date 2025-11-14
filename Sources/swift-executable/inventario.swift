func mostrarInventario(_ inventario: [String: Int]) {
    if inventario.isEmpty {
        print("Você não tem nenhum item.")
    } else {
        for (item, quantidade) in inventario {
            print("* \(item): \(quantidade)")
        }
    }
    print("=================================\n")
}

func atualizarInventario(itens: [String: Int], inventario: inout [String: Int]) {
    for (item, quantidade) in itens {    
        inventario[item, default: 0] += quantidade
        
    }
}