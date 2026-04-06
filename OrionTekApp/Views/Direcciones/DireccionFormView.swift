//
//  DireccionFormView.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import SwiftUI

struct DireccionFormView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var cliente: Cliente
    @ObservedObject var viewModel: ClienteViewModel
    
    @State private var calle = ""
    @State private var ciudad = ""
    @State private var pais = ""
    @State private var error = ""
    
    var body: some View {
        VStack {
            TextField("Calle", text: $calle)
                .textFieldStyle(.roundedBorder)
            
            TextField("Ciudad", text: $ciudad)
                .textFieldStyle(.roundedBorder)
            
            TextField("País", text: $pais)
                .textFieldStyle(.roundedBorder)
            
            if !error.isEmpty {
                Text(error).foregroundColor(.red)
            }
            
            Button("Guardar") {
                if let err = Validator.validarDireccion(calle: calle, ciudad: ciudad, pais: pais) {
                    error = err
                } else {
                    let nueva = Direccion(calle: calle, ciudad: ciudad, pais: pais)
                    viewModel.agregarDireccion(cliente: cliente, direccion: nueva)
                    dismiss()
                }
            }
        }
        .padding()
    }
}
