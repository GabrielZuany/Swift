//
//  ContentView.swift
//  Aula2
//
//  Created by Turma02-10 on 07/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var alert = false
    @State private var name:String = "User"
    var body: some View {
        ZStack (alignment: .center){
            Image("Captura de Tela 2023-01-18 às 22.59.48")
                .opacity(0.25)
            
            VStack(alignment: .center){
                Spacer()
                
                //Welcome
                VStack (alignment: .center){
                    Text("Welcome, \(name)!")
                        .bold()
                        .font(.system(size: 30))
                    TextField("User", text: $name)
                        .multilineTextAlignment(.center)
                }.padding(.top)
                Spacer()
                
                //truck
                VStack (alignment: .center){
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    Image("truck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                }
                Spacer()
                
                //Button
                VStack (alignment: .center){
                    Button("Sign In") {
                        alert = true
                    }
                    .alert(isPresented: $alert){
                        Alert(
                            title: Text("Alert Window"),
                            message: Text("HackaTruck alert message"),
                            dismissButton: .default(Text("Dismiss")))
                    }
                    Rectangle()
                        .fill(.gray)
                        .frame(maxWidth: 100, maxHeight:4)
                        .border(.clear)
                        .cornerRadius(100)
                }
                Spacer()
            }.padding(100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
