//
//  Location.swift
//  Aula06
//
//  Created by Turma02-10 on 13/06/24.
//

import SwiftUI
import MapKit
import Foundation

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
    let index: Int
}

var locations = [
    Location(name: "Brazil",
             coordinate: CLLocationCoordinate2D(latitude: -14.2929958, longitude: -72.5317478),
             flag: "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1200px-Flag_of_Brazil.svg.png",
             description: "Brazil, officially the Federative Republic of Brazil,[c] is the largest and easternmost country in South America and in Latin America. Brazil is the world's fifth-largest country by area and the seventh most populous. Its capital is Brasília, and its most populous city is São Paulo. The federation is composed of the union of the 26 states and the Federal District. It is the only country in the Americas to have Portuguese as an official language. Brazil is one of the most multicultural and ethnically diverse nations, due to over a century of mass immigration from around the world.",
             index: 0),
    Location(name: "Italy",
             coordinate: CLLocationCoordinate2D(latitude: 41.9099533, longitude: 12.3711888),
             flag: "https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Flag_of_Italy.svg/1200px-Flag_of_Italy.svg.png",
             description: "Italy,[a] officially the Italian Republic,[b] is a country in Southern[12] and Western[13][c] Europe. It is located on a peninsula that extends into the middle of the Mediterranean Sea, with the Alps on its northern land border, as well as islands, notably Sicily and Sardinia.[15] Italy shares its borders with France, Switzerland, Austria, Slovenia and two enclaves: Vatican City and San Marino. It is the tenth-largest country in Europe, covering an area of 301,340 km2 (116,350 sq mi),[3] and third-most populous member state of the European Union, with a population of nearly 60 million.[16] Its capital and largest city is Rome; other major urban areas include Milan, Naples, Turin, Florence, and Venice.",
             index: 1),
    Location(name: "USA",
             coordinate: CLLocationCoordinate2D(latitude: 39.4698126, longitude: -112.1875543),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Flag_of_the_United_States.png/1200px-Flag_of_the_United_States.png",
             description: "The United States of America (USA or U.S.A.), commonly known as the United States (US or U.S.) or America, is a country primarily located in North America. It is a federation of 50 states, a federal capital district (Washington, D.C.), and 326 Indian reservations.[j] Outside the union of states, it asserts sovereignty over five major unincorporated island territories and various uninhabited islands.[k] The country has the world's third-largest land area,[d] second-largest exclusive economic zone, and third-largest population, exceeding 334 million.",
             index: 2),
    Location(name: "France",
             coordinate: CLLocationCoordinate2D(latitude: 43.7378496, longitude: 7.4052529),
             flag: "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/1200px-Flag_of_France.svg.png",
             description: "France,[a] officially the French Republic,[b] is a country located primarily in Western Europe. It also includes overseas regions and territories in the Americas and the Atlantic, Pacific, and Indian Oceans,[XI] giving it one of the largest discontiguous exclusive economic zones in the world. Metropolitan France shares borders with Belgium and Luxembourg to the north, Germany to the north east, Switzerland to the east, Italy and Monaco to the south east, Andorra and Spain to the south, and a maritime border with the United Kingdom to the north west. Its metropolitan area extends from the Rhine to the Atlantic Ocean and from the Mediterranean Sea to the English Channel and the North Sea. Its overseas territories include French Guiana in South America, Saint Pierre and Miquelon in the North Atlantic, the French West Indies, and many islands in Oceania and the Indian Ocean. Its eighteen integral regions (five of which are overseas) span a combined area of 643,801 km2 (248,573 sq mi) and have a total population of 68.4 million as of January 2024.",
             index: 3)
    ]
