//
//  Validator.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import Foundation

class Validator {
    
    static func validarCliente(nombre: String, email: String) -> String? {
        
        if nombre.isEmpty {
            return "El nombre no puede estar vacío"
        }
        
        if !email.contains("@") {
            return "Email inválido"
        }
        
        return nil
    }
    
    static func validarDireccion(calle: String, ciudad: String, pais: String) -> String? {
        
        if calle.isEmpty || ciudad.isEmpty || pais.isEmpty {
            return "Todos los campos son obligatorios"
        }
        
        return nil
    }
}
