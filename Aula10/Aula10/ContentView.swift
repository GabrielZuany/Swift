//
//  ContentView.swift
//  Aula10
//
//  Created by Turma02-10 on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    private var last_read:Double =  0.00
    var body: some View {
        VStack{
            Spacer()
            Button("Fetch"){
                vm.fetchLeitura()
//                last_read = Double(vm.leituras[0].umidade ?? 0.00)
            }
            List{
                ForEach(vm.leituras, id:\.self){
                    val in
                    Text("\(val.umidade ?? "null")")
                }
            }
            ProgressView(value:0.6)
            ProgressView(value:last_read)
        }.padding()
    }
}

#Preview {
    ContentView()
}
