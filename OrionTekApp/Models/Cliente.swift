//
//  Cliente.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import Foundation

struct Cliente: Identifiable {
    let id = UUID()
    var nombre: String
    var email: String
    var direcciones: [Direccion]
}
