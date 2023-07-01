//
//  ContentView.swift
//  PlanetShow
//
//  Created by Mathieu Moutarde on 01/07/2023.
//

import SwiftUI

struct ContentView: View {
    var topColor = Color(red: 0/255, green: 39/255, blue: 64/255)
    var bottomColor = Color(red: 34/255, green: 123/255, blue: 160/255)
    @State private var currentIndex = 0
    @EnvironmentObject var data: Datas
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                HStack (spacing : 40) {
                    Button {
                        if currentIndex > 0 {
                            currentIndex -= 1
                        }
                    } label: {
                        Image(systemName: "signpost.left.fill")
                            .foregroundColor(Color.white)
                            .bold()
                            .font(.title2)
                    }
                    Text("\(data.allPlanets[currentIndex].name)")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                    Button {
                        if currentIndex < data.allPlanets.count - 1 {
                                                currentIndex += 1
                                            }
                    }label: {
                        Image(systemName: "signpost.right.fill")
                            .bold()
                            .foregroundColor(.white)
                            .bold()
                            .font(.title2)
                    }
                } .padding(10)
                    .frame(maxWidth: .infinity)
                VStack {
                    Image("\(data.allPlanets[currentIndex].imageName)")
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 4)
                        .foregroundColor(.white)
                        .padding(10)
                }
                VStack {
                    Text("Position depuis le soleil : \(data.allPlanets[currentIndex].position)")
                        .font(.title3)
                        .foregroundColor(.white)
                }
                HStack {
                    ScrollView {
                        Text("\(data.allPlanets[currentIndex].planetDesc())")
                            .foregroundColor(.white)
                            .padding()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
