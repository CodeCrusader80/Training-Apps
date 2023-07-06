//
//  CategoriesView.swift
//  LittleSocial
//
//  Created by Mathieu Moutarde on 06/07/2023.
//

import SwiftUI


struct CategoriesView: View {
    var stories = ["Vacances", "Work", "Me", "IA", "My Friends", "Sport"]
    var colors: [Color] = [.purple, .green, .orange, .cyan, .teal, .yellow]
        @Binding var index: Int
        
    var body: some View {
        VStack {
            Text("Stories à la une")
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
                .font(.title2)
                .fontWeight(.medium)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<stories.count, id: \.self) { i in
                        Button(action: {
                            index = i
                        }) {
                            Text(stories[i])
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(colors[i])
                                .cornerRadius(20)
                                .fontWeight(.semibold)
                        }
                    }
                }
            }.padding()
            Rectangle()
                .fill(Color.primary)
                .frame(height: 1)
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView(index: .constant(0))
    }
}
