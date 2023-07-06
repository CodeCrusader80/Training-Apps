//
//  HeaderView.swift
//  LittleSocial
//
//  Created by Mathieu Moutarde on 06/07/2023.
//

import SwiftUI

struct HeaderView: View {
    var profil = "photo-profil"
    var publication = 200
    var followers = 2770
    var abonnements = 150
    var nom = "Ashley Johnson"
    var desc = "Passionnée d'astronomie, de tech, je bosse en freelance, si jamais vous êtes intéressé par mes services n'hésitez pas à me contacter 👩‍💻"
    var body: some View {
        VStack {
            HStack (spacing: 10){
                ZStack {
                    Image(profil)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 110, height: 110)
                        .cornerRadius(55)
                    
                        Button {
                        } label: {
                            Image(systemName: "plus.circle.fill")
                        }.offset(x: 45, y: 40)
                            .font(.title)
                }
                Text("\(publication)")
                    .font(.body)
                    .fontWeight(.bold) +
                Text("\nPublications")
                    .font(.custom("sans-serif", size: 15))
                Text("\(followers)")
                    .font(.body)
                    .fontWeight(.bold) +
                Text("\nFollowers")
                    .font(.custom("sans-serif", size: 15))

                Text("\(abonnements)")
                    .font(.body)
                    .fontWeight(.bold) +
                Text("\nAbonnements")
                    .font(.custom("sans-serif", size: 15))
            }.multilineTextAlignment(.center)
            HStack{
                Text("\(nom)")
                    .font(.title2)
                    .fontWeight(.bold) +
                Text("\n\(desc)")
            }.multilineTextAlignment(.center)
            HStack (spacing: 40) {
                Button {
                    
                } label: {
                    Text("Modifier")
                        .foregroundColor(.white)
                }
                .frame(width: 100, height: 30)
                .background(.blue)
                .cornerRadius(10)
                Button {
                    
                } label: {
                    Image(systemName: "person.fill.badge.plus")
                        .font(.title2)
                }
            }
            Rectangle()
                .fill(Color.primary)
                .frame(height: 1)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
