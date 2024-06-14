//
//  DescriptionView.swift
//  Aula06
//
//  Created by Turma02-10 on 13/06/24.
//

import SwiftUI

struct DescriptionView: View {
    var index = 0
    var body: some View {
        VStack{
            Text("\(locations[index].name)").bold().font(.largeTitle)
            AsyncImage(url:URL(string:locations[index].flag))
            {
                image in image.image?.resizable()
            }
            .frame(width: 350, height: 200)
            Spacer()
            Text("\(locations[index].description)")
            Spacer()
        }.padding()
    }
}

#Preview {
    DescriptionView()
}
