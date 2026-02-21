//
//  CapsuleRealityArea.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/16/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct BoatRealityArea: View {
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Scene", in: realityKitContentBundle) else { fatalError ("Unable to load scene model") }
            content.add(entity)
        }
    }
}

#Preview {
    BoatRealityArea()
        .environment(ViewModel())
}
