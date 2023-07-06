//
//  PostView.swift
//  LittleSocial
//
//  Created by Mathieu Moutarde on 06/07/2023.
//

import SwiftUI

struct PostView: View {
    @State var showDetail = false
    
    var post: Post
    var body: some View {
        Button {
            self.showDetail.toggle()
        } label: {
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
                .overlay {
                    GeometryReader { img in
                        Image(post.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: img.size.width, height: img.size.height)
                            .clipped()
                    }
                }
        }
        .fullScreenCover(isPresented: $showDetail) {
            DetailView(show: $showDetail, post: post)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post(image: "vacances", desc: "", time: randomDateFormatted(), comments: 45, likes: 200))
    }
}
