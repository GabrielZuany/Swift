//
//  CacheView.swift
//  Aula07_Desafio
//
//  Created by Turma02-10 on 14/06/24.
//

import SwiftUI

struct CacheView: View {
    @State var cache:CacheData?
    var body: some View {
        ZStack {
            AsyncImage(url:URL(string:"https://conteudo.imguol.com.br/c/parceiros/40/2020/03/11/coronavirus-1583951542371_v2_900x506.jpg"))
            {
                image in image.image?.resizable()
            }.frame(width: .infinity, height: .infinity).opacity(0.15)
            
            ZStack{
                Rectangle()
                    .fill(.green)
                    .frame(width:300, height:200)
                    .border(.clear)
                    .cornerRadius(15)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding()
                VStack{
                    Text("Cache Info").bold().foregroundStyle(.white)
//                    Text("Last Updated: \(cache?.lastUpdated)")
//                    Text("Expires: \(cache?.expires)")
//                    Text("Last Updated(TS): \(cache?.lastUpdatedTimestamp)")
//                    Text("Expires(TS): \(cache?.expiresTimestamp)")
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    CacheView()
}
