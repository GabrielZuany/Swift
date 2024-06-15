//
//  Card.swift
//  Aula07_Desafio
//
//  Created by Turma02-10 on 14/06/24.
//

import SwiftUI

struct MainView: View {
    @State var dataSource:DataSource?
    @State var cache:CacheData?
    @State var summaryStats: SummaryStats?
    var body: some View {
        ZStack {
            AsyncImage(url:URL(string:"https://conteudo.imguol.com.br/c/parceiros/40/2020/03/11/coronavirus-1583951542371_v2_900x506.jpg"))
            {
                image in image.image?.resizable()
            }.frame(width: .infinity, height: .infinity).opacity(0.15)
            
            VStack{
                ZStack{
                    Rectangle()
                        .fill(.green)
                        .frame(width:200, height:130)
                        .border(.clear)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding()
                    VStack{
                        Text("Countries Data").bold().foregroundStyle(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .fill(.green)
                        .frame(width:200, height:130)
                        .border(.clear)
                        .cornerRadius(15)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                    VStack{
                        Text("Cache").bold().foregroundStyle(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .fill(.green)
                        .frame(width:200, height:130)
                        .border(.clear)
                        .cornerRadius(15)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                    VStack{
                        Text("Summary Stats").bold().foregroundStyle(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .fill(.green)
                        .frame(width:200, height:130)
                        .border(.clear)
                        .cornerRadius(15)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                    VStack{
                        Text("Data Source").bold().foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

