//
//  Modo1.swift
//  Aula04_Desafio
//
//  Created by Turma02-10 on 11/06/24.
//

import SwiftUI

struct Modo1: View {
    var firstname: String = ""
    var lastname: String = ""
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
            VStack{
                Text("Firstname: \(firstname)").foregroundStyle(.white)
                Text("Lastname: \(lastname)").foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    Modo1()
}
