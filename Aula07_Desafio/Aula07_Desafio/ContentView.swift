//
//  ContentView.swift
//  Aula07_Desafio
//
//  Created by Turma02-10 on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
//        List {
//            ForEach(vm.results, id: \.self){
//                rd in
//                Text("\(rd.Country_Region!)")
//            }
//        }
//        .onAppear(){
//            vm.fetchResults()
//        }
        ZStack {
            AsyncImage(url:URL(string:"https://conteudo.imguol.com.br/c/parceiros/40/2020/03/11/coronavirus-1583951542371_v2_900x506.jpg"))
            {
                image in image.image?.resizable()
            }.frame(width: .infinity, height: .infinity).opacity(0.15)
            
            VStack{
                MainView(cache: vm.cache, summaryStats: vm.summaryStats)
            }
        }
        .ignoresSafeArea()
        .onAppear(){
            vm.fetchResults()
        }
    }
}

#Preview {
    ContentView()
}
