//
//  ContentView.swift
//  Aula04
//
//  Created by Turma02-10 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab1()
                .tabItem {
                    Label("Pink", systemImage: "paintbrush.fill")
                }
            Tab2()
                .tabItem {
                    Label("Blue", systemImage: "paintbrush.pointed.fill")
                }
            Tab3()
                .tabItem {
                    Label("Gray", systemImage: "paintpalette.fill")
                }
            Tab4()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
        }
    }
}


struct Tab4: View {
    var body: some View {
        NavigationView{
            List(){
                HStack{
                    Text("Item1")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Item2")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Item3")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }.navigationTitle("List")
        }
    }
}

#Preview {
    ContentView()
}
