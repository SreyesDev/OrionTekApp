//
//  Direccion.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import Foundation

struct Direccion: Identifiable {
    let id = UUID()
    var calle: String
    var ciudad: String
    var pais: String
}
