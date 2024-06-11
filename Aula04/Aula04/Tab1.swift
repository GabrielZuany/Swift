//
//  Tab1.swift
//  Aula04
//
//  Created by Turma02-10 on 11/06/24.
//

import SwiftUI

struct Tab1: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300, height: 300)
            
            Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.pink)
                
        }
    }
}

#Preview {
    Tab1()
}
