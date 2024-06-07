//
//  InstagramCopy.swift
//  Aula01
//
//  Created by Turma02-10 on 06/06/24.
//

import SwiftUI

struct InstagramCopy: View {
    var body: some View {
        VStack{
            
            // header
            HStack{
                // picture
                HStack{
                    Image("images")
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 130)
                }
                Spacer()
                // Databox
                VStack{
                    // posts, followers, following
                    HStack(spacing:10){
                        VStack{
                            Text("8")
                                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .bold()
                            Text("Posts").fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.gray)
                        }
                        VStack{
                            Text("12k")
                                .fixedSize(horizontal: true, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .bold()
                            Text("Followers")
                                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.gray)
                        }
                        VStack{
                            Text("2k")
                                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .bold()
                            Text("Following")
                                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.gray)
                        }
                    }.padding(5)
                    // button
                    HStack{
                        Spacer()
                        Text("Edit Account").bold().padding(4)
                        Spacer()
                    }.background(Color(hue: 1.0, saturation: 0.008, brightness: 0.821))
                    .border(.clear)
                    .cornerRadius(5)
                    .padding(.horizontal)
               }
            }.padding().background()
            
            //Description
            VStack (alignment: .leading, spacing: 3){
                Text("HackaTruck")
                    .bold()
                    .font(.system(size: 16))
                Text("Some description")
                    .font(.system(size: 15))
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading)
            
            
            // icon bar
            Rectangle().fill(Color(.gray)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 1)
         
            
            Spacer()
            
            // pictures
            VStack{
                HStack{
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).aspectRatio(contentMode: .fit)
                    }
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center).aspectRatio(contentMode: .fit)
                    }
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing).aspectRatio(contentMode: .fit)
                    }
                }
                HStack{
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).aspectRatio(contentMode: .fit)
                    }
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center).aspectRatio(contentMode: .fit)
                    }
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing).aspectRatio(contentMode: .fit)
                    }
                }
                
                HStack{
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).aspectRatio(contentMode: .fit)
                    }
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center).aspectRatio(contentMode: .fit)
                    }
                    HStack{
                        Rectangle().fill(Color(hue: 1.0, saturation: 0.008, brightness: 0.821)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing).aspectRatio(contentMode: .fit)
                    }
                }
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
            
            Spacer()
            
        }.background().padding()
    }
}

#Preview {
    InstagramCopy()
}
