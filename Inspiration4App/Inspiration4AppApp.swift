//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import SwiftUI

@main
struct Inspiration4AppApp: App {

    @State private var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
           Areas()
        }//.windowStyle(.plain)// to remove background blur
            //.defaultSize(CGSize(width: 200, height: 400))//in oprder to see and potentially resize

        ImmersiveSpace(id: appModel.immersiveSpaceID) {
            ImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                }
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
