//
//  Desafio2.swift
//  Aula01
//
//  Created by Turma02-10 on 06/06/24.
//

import SwiftUI

struct Desafio2: View {
    var body: some View {
        
        HStack{
            VStack{
                Image("images")
                    .frame(width: 200, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            VStack{
                Text("Hackatruco")
                    .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("5 Regiões do Brasil")
                    .foregroundStyle(.yellow)
            }
        }.padding()
    }
}

#Preview {
    Desafio2()
}
