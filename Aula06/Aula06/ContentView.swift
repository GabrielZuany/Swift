//
//  ContentView.swift
//  Aula06
//
//  Created by Turma02-10 on 13/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var current_location_name:String = "Brazil"
    @State private var current_coordinate = locations[0].coordinate
    @State private var current_index = 0
    @State private var description: Bool = false
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
            span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta: 1)))
    
    var body: some View {
        
        // Map (background)
        ZStack {
            Map(position: $position){}
            .ignoresSafeArea()
            
            // Header (2nd zstack axis -> rectangle)
            ZStack{
                VStack{
                    Rectangle()
                        .fill(.white)
                        .frame(width: .infinity, height:160)
                        .opacity(0.7)
                        .ignoresSafeArea()
                    Spacer()
                }
                
                // WorldMap title and placeholder
                ZStack{
                    VStack{
                        Text("World Map")
                            .bold()
                            .font(.largeTitle)
                            .padding(10)
                        Text("\(current_location_name)")
                        Spacer()
                        }
                    }
                    
                // flags
                    VStack{
                        Spacer()
                        Button("Info"){
                            description.toggle()
                        }
                        .buttonStyle(.bordered)
                        .sheet(isPresented: $description){
                            DescriptionView(index: current_index)
                        }
                        HStack{
                            ForEach(locations) {f in
                                Button{
                                    position =  MapCameraPosition.region(
                                        MKCoordinateRegion(
                                            center: CLLocationCoordinate2D(latitude: f.coordinate.latitude, longitude: f.coordinate.longitude),
                                            span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta: 1)))
                                    current_location_name = f.name
                                    current_index = f.index
                                } label: {
                                    AsyncImage(url:URL(string:f.flag))
                                    {
                                        image in image.image?.resizable()
                                    }
                                    .frame(width: 80, height: 50)
                                }
                            }
                            Spacer()
                        }.padding()
                        
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
