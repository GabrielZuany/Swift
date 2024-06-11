//
//  Modo2.swift
//  Aula04_Desafio
//
//  Created by Turma02-10 on 11/06/24.
//

import SwiftUI

struct Modo2: View {
    @State private var firstname:String = "User"
    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                    .fill(Color("pink2"))
                    .frame(width: 300, height: 180)
                    .border(.clear)
                    .cornerRadius(10)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            VStack{
                TextField("Name", text:$firstname)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                Text("Bye,  \(firstname)!")
                    .foregroundStyle(.white)
                    .bold()
                
                NavigationLink(destination: Modo2_next(firstname: firstname)){
                    Text("Acessar Tela")
                }
            }
        }
    }
}

struct Modo2_next: View {
    @State var firstname:String = "User"
    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                    .fill(Color("pink2"))
                    .frame(width: 300, height: 180)
                    .border(.clear)
                    .cornerRadius(10)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            VStack{
                TextField("Name", text:$firstname)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                Text("Welcome,  \(firstname)!")
                    .foregroundStyle(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    Modo2()
}
