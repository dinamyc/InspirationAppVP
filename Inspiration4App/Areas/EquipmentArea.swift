//
//  EquipmentArea.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/13/26.
//

import SwiftUI

struct EquipmentArea: View {
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    var body: some View {
        @Bindable var model = model
        
        HStack {
            EquipmentCard(isShowing: $model.isShowingRocketCapsule, toggleTitle: "Boat (Volumetric)", imageName: "equipment-boat") {
                openWindow(id: model.capsuleRealityAreaId)
            } dismissCard: {
                dismissWindow(id: model.capsuleRealityAreaId)
            }
            
            EquipmentCard(isShowing: $model.isShowingFullRocket, toggleTitle: "Submarine (Full Immersive Space)", imageName: "equipment-submarine") {
                await openImmersiveSpace(id: model.fullRocketRealityArea)
            } dismissCard: {
                await dismissImmersiveSpace()
            }
        }
    }
}

#Preview {
    EquipmentArea()
        .environment(ViewModel())
}
