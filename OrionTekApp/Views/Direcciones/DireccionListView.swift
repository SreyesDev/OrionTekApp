//
//  DireccionListView.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import SwiftUI

struct DireccionListView: View {
    
    var cliente: Cliente
    @ObservedObject var viewModel: ClienteViewModel
    @State private var showForm = false
    
    var body: some View {
        VStack {
            List(cliente.direcciones) { direccion in
                VStack(alignment: .leading) {
                    Text(direccion.calle)
                    Text("\(direccion.ciudad), \(direccion.pais)")
                        .font(.subheadline)
                }
            }
            
            Button("Agregar Dirección") {
                showForm = true
            }
            .padding()
        }
        .navigationTitle(cliente.nombre)
        .sheet(isPresented: $showForm) {
            DireccionFormView(cliente: cliente, viewModel: viewModel)
        }
    }
}
