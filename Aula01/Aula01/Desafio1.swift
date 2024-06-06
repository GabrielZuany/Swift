//
//  Desafio1.swift
//  Aula01
//
//  Created by Turma02-10 on 06/06/24.
//

import SwiftUI

struct Desafio1: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                Spacer()
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
            }
            Spacer()
            HStack{
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)
                Spacer()
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 50, height: 50)            }
        }.padding()
    }
}

#Preview {
    Desafio1()
}
