//
//  primeraPantalla.swift
//  Bases_SwiftUI
//
//  Created by alumno on 2/24/25.
//

import SwiftUI

struct primeraPantalla: View {
    var body: some View{
        Spacer()
        CampoSencillo()
        Spacer()
        
        CampoSencillo()
            .background(Color.blue)
        CampoSencillo()
        CampoSencillo()
    }
}

struct CampoSencillo: View{
    @State private var texto = ""
    
    var body: some View {
        Spacer()
        Text("Hola \(texto)")
        Spacer()
        TextField("PlaceHolder", text: $texto)
        Spacer()
        
        Button(action: {
            texto = ""
        }){
            Image(systemName: "trash.fill")
                .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                .tint(.yellow)
        }
        .background(Color.red)
        Spacer()
    }
}

#Preview {
    primeraPantalla()
}
