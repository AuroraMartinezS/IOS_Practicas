//
//  ContentView.swift
//  mi_primera_app_swiftUI
//
//  Created by alumno on 2/21/25.
//

import SwiftUI

struct ContentView: View {
    @State private var texto_introducido_por_usuario: String = "Place Holder"
    @State private var texto_a_mostrar_en_saludo: String = "Mundo"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hola \(texto_a_mostrar_en_saludo)")
            
            TextEditor(text: $texto_introducido_por_usuario)
            
            Button("¡Aceptar!", action: {
                if(texto_introducido_por_usuario == ""){
                    texto_a_mostrar_en_saludo = "Mundo"
                }else{
                    texto_a_mostrar_en_saludo = texto_introducido_por_usuario
                    texto_introducido_por_usuario = ""
                }
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
