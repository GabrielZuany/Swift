//
//  Tab3.swift
//  Aula04
//
//  Created by Turma02-10 on 11/06/24.
//

import SwiftUI

struct Tab3: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300, height: 300)
            
            Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.gray)
                
        }
    }
}

#Preview {
    Tab3()
}
