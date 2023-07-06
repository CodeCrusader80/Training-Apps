//
//  ContentView.swift
//  LittleSocial
//
//  Created by Mathieu Moutarde on 06/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State var index: Int = 0
    @State var post : [Post] = items
    var body: some View {
        VStack {
            HeaderView()
            CategoriesView(index: $index)
            GridImagesView(items: post)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
