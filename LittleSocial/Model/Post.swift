//
//  Post.swift
//  LittleSocial
//
//  Created by Mathieu Moutarde on 06/07/2023.
//

import Foundation

struct Post : Identifiable {
    var id = UUID()
    var image: String
    var desc: String
    var time = randomDateFormatted()
    var comments: Int
    var likes: Int
}

func randomDateFormatted() -> String {
    let daysBack: Int = .random(in: 1..<365)
    let duration: TimeInterval = Double(daysBack * 24 * 60 * 60)
    let randomDate = Date(timeIntervalSinceNow: -duration)

    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .none
    formatter.locale = Locale(identifier: "fr-FR")
    let formattedDate = formatter.string(from: randomDate)

    return formattedDate
}
