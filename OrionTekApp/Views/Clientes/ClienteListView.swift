//
//  ClienteListView.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import SwiftUI

struct ClienteListView: View {
    
    @StateObject var viewModel = ClienteViewModel()
    @State private var showForm = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.clientes) { cliente in
                    NavigationLink(destination: DireccionListView(cliente: cliente, viewModel: viewModel)) {
                        VStack(alignment: .leading) {
                            Text(cliente.nombre).font(.headline)
                            Text(cliente.email).font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Clientes")
            .toolbar {
                Button("+") {
                    showForm = true
                }
            }
            .sheet(isPresented: $showForm) {
                ClienteFormView(viewModel: viewModel)
            }
        }
    }
}
