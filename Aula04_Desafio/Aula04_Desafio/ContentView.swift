//
//  ContentView.swift
//  Aula04_Desafio
//
//  Created by Turma02-10 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var firstname:String = "Firstname"
    @State private var lastname:String = "Lastname"
    @State private var sheet:Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                NavigationLink(destination: Modo1(firstname: firstname, lastname: lastname)){
                    Text("Modo 1")
                }
                NavigationLink(destination: Modo2()){
                    Text("Modo 2")
                }
                Button("Modo 3"){
                    sheet.toggle()
                }
                .sheet(isPresented: $sheet){
                    Modo3()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
