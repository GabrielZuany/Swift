//
//  ContentView.swift
//  Aula03
//
//  Created by Turma02-10 on 10/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var status_:StatusType = .inv
    @State private var weight:Double = 0.00
    @State private var height:Double = 0.00
    @State private var result:Double = 0.00
    
    enum StatusType{
        case baixo, norm, sobrepeso, obesidade, inv
    }
    
    func status_str(status_enum:StatusType)->String{
        switch status_enum {
        case .baixo: return "Baixo peso"
        case .norm: return "Normal"
        case .sobrepeso: return "Sobrepeso"
        case .obesidade: return "Obesidade"
        default: return "Inválido"
        }
    }
    
    func calc(w:Double, h:Double){
        result = w/(h*h)
        switch result {
        case 0..<18.5: status_ = .baixo
        case 18.5...24.99: status_ = .norm
        case 25...29.99: status_ = .sobrepeso
        case 30...: status_ = .obesidade
        default: status_ = .inv
        }
    }
    
    func selectColor(category:StatusType)->Color{
        switch category {
        case .baixo: return Color("baixo")
        case .norm: return Color("normal")
        case .sobrepeso: return Color("sobrepeso")
        case .obesidade: return Color("obesidade")
        default: return .white
        }
    }
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
            
            // input labels -> button
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                // Title
                VStack{
                    Text("Calculadora de IMC")
                        .bold()
                        .font(.system(size: 30))
                }
                // weight
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                    TextField("Peso", value:$weight, format: .number)
                        .keyboardType(.numberPad)
                        .bold()
                        .multilineTextAlignment(.center)
                        .background()
                        .frame(width: 300)
                        .border(.clear)
                        .cornerRadius(7)
                }
                // height
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                    TextField("Altura", value:$height, format:.number)
                        .keyboardType(.numberPad)
                        .bold()
                        .multilineTextAlignment(.center)
                        .background()
                        .frame(width: 300)
                        .border(.clear)
                        .cornerRadius(7)
                }
                // button
                VStack{
                    Button("Calcular"){
                        calc(w: weight, h: height)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                }
            }
            
            // Status
            Spacer()
            VStack{
                Text("\(status_str(status_enum:status_))")
                    .font(.system(size: 35))
            }
            
            // Table
            Spacer()
            VStack {
                Image("tabela-IMC")
                    .resizable()
                    .frame(width: 500, height: 200)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }.padding()
            
            Rectangle()
                .fill(.gray)
                .frame(maxWidth: 100, maxHeight:4)
                .border(.clear)
                .cornerRadius(100)
        }.background(selectColor(category:status_))
    }
}

#Preview {
    ContentView()
}
