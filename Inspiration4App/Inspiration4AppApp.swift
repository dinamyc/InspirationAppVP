//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import SwiftUI

@main
struct Inspiration4AppApp: App {
    @State private var model = ViewModel()

    var body: some Scene {
        WindowGroup {
           Areas()
                .environment(model)
        }
        
        WindowGroup(id: model.capsuleRealityAreaId){
            BoatRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.65, height: 0.3, depth: 0.3, in: .meters)
        
        ImmersiveSpace(id: model.fullRocketRealityArea){
            FullRocketRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
