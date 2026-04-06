//
//  ClienteFormView.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import SwiftUI

struct ClienteFormView: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: ClienteViewModel
    
    @State private var nombre = ""
    @State private var email = ""
    @State private var error = ""
    
    var body: some View {
        VStack {
            TextField("Nombre", text: $nombre)
                .textFieldStyle(.roundedBorder)
            
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
            
            if !error.isEmpty {
                Text(error).foregroundColor(.red)
            }
            
            Button("Guardar") {
                if let err = viewModel.agregarCliente(nombre: nombre, email: email) {
                    error = err
                } else {
                    dismiss()
                }
            }
            .padding()
        }
        .padding()
    }
}
