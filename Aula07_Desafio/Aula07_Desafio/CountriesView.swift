//
//  CountriesView.swift
//  Aula07_Desafio
//
//  Created by Turma02-10 on 17/06/24.
//

import SwiftUI

struct CountriesView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        List {
            ForEach(vm.rawData, id: \.self){
                rd in
                Text("\(rd.Country_Region!)")
            }
        }.onAppear(){
            vm.fetchResults()
        }
    }
}

#Preview {
    CountriesView()
}
