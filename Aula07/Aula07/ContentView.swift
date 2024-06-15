//
//  ContentView.swift
//  Aula07
//
//  Created by Turma02-10 on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        List {
            ForEach(vm.coins){
                coin in
                Text("\(coin.symbol!) - \(coin.rank!)")
            }
        }
        .onAppear(){
            vm.fetchCoins()
        }
    }
}

#Preview {
    ContentView()
}
