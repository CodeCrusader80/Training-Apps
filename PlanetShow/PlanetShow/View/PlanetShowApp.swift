//
//  PlanetShowApp.swift
//  PlanetShow
//
//  Created by Mathieu Moutarde on 01/07/2023.
//

import SwiftUI

@main
struct PlanetShowApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Datas())
        }
    }
}
