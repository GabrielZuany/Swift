//
//  Tab2.swift
//  Aula04
//
//  Created by Turma02-10 on 11/06/24.
//

import SwiftUI

struct Tab2: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300, height: 300)
            
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
                
        }
    }
}

#Preview {
    Tab2()
}
