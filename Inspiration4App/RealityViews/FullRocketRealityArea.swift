//
//  FullRocketRealityArea.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/16/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {
    @State private var audioController: AudioPlaybackController?
    @State private var rootEntity: Entity?
    @State private var cameraAnchor: AnchorEntity?
    
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Immersive", in: realityKitContentBundle) else { fatalError ("Unable to load scene model")
            }
            
            rootEntity = entity
            
            let ambientAudioEntity = entity.findEntity(named: "AmbientAudio")
            
            guard let resource = try? await AudioFileResource(named: "/Root/_GridMaterial/Space", from: "Immersive.usda", in: realityKitContentBundle) else {
                fatalError("Unable to load space.wav audio resource")
            }
            
            audioController = ambientAudioEntity?.prepareAudio(resource)
            audioController?.play()
            
            content.add(entity)
        }
        .onDisappear(perform: {
            audioController?.stop()
        })
    }
}

#Preview {
    FullRocketRealityArea()
        .environment(ViewModel())
}
