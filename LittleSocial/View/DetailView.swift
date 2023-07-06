//
//  DetailView.swift
//  LittleSocial
//
//  Created by Mathieu Moutarde on 06/07/2023.
//

import SwiftUI

struct DetailView: View {
    @Binding var show: Bool
    var post: Post
    var body: some View {
        ZStack {
            Image(post.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .position(x: 380, y: 400)
                .frame(maxWidth: 400, maxHeight: .infinity)
                .ignoresSafeArea()
    
            
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.5), Color.clear]), startPoint: .top, endPoint: .center)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        self.show = false
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.top)
                        
                    }
                    .padding()
                    
                    Spacer()
                }
                
                Spacer()
                
                Rectangle()
                    .fill(Color.black.opacity(0.96))
                    .frame(height: 200)
                    .cornerRadius(20)
                    .overlay(
                        VStack {
                            HStack {
                                Text("\(post.likes) likes")
                                    .foregroundColor(.blue)
                                
                                Spacer()
                                
                                Text("\(post.comments) commentaires")
                                    .foregroundColor(.green)
                                
                                Spacer()
                        
                                Text("Le \(post.time)")
                                    .foregroundColor(.orange)
                            }.padding()
                            
                            ScrollView {
                                Text("\(post.desc)")
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        }
                                    )
                            .foregroundColor(.black)
            }.edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(show: .constant(false), post: Post(image: "vacances", desc: "", time: randomDateFormatted(), comments: 25, likes: 50))
    }
}
