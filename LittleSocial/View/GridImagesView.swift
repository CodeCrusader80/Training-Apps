//
//  GridImagesView.swift
//  LittleSocial
//
//  Created by Mathieu Moutarde on 06/07/2023.
//

import SwiftUI

struct GridImagesView: View {
    var items: [Post]
    
    let grid = GridItem(.flexible())
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                Text("Publications")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.orange)
                LazyVGrid(columns: [grid, grid, grid]) {
                    ForEach(items) { item in
                        PostView(post: item)
                    }
                }
            }
        }.padding()
    }
}


