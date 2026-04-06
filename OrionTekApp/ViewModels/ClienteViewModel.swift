//
//  ClienteViewModel.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import Foundation
import Combine

class ClienteViewModel: ObservableObject {
    
    @Published var clientes: [Cliente] = []
    
    func agregarCliente(nombre: String, email: String) -> String? {
        
        if let error = Validator.validarCliente(nombre: nombre, email: email) {
            return error
        }
        
        let nuevo = Cliente(nombre: nombre, email: email, direcciones: [])
        clientes.append(nuevo)
        return nil
    }
    
    func agregarDireccion(cliente: Cliente, direccion: Direccion) {
        if let index = clientes.firstIndex(where: { $0.id == cliente.id }) {
            clientes[index].direcciones.append(direccion)
        }
    }
}
