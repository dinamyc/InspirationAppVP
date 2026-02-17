//
//  SubmarineRealityArea.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/17/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SubmarineRealityArea: View {
    @State private var submarine: Entity?
    @State private var startTransform: Transform = .identity

    var body: some View {
        VStack(spacing: 16) {
            RealityView { content async in
                guard let entity = try? await Entity(named: "OnlySubmarine", in: realityKitContentBundle) else {
                    fatalError("Unable to load scene model")
                }

                entity.generateCollisionShapes(recursive: true)
                entity.components.set(InputTargetComponent(allowedInputTypes: [.direct, .indirect]))

                content.add(entity)

                submarine = entity
                startTransform = entity.transform
            }
            .frame(height: 420)

            HStack(spacing: 12) {
                Button("⬅️") { nudge(x: -0.05, y: 0, z: 0) }
                Button("➡️") { nudge(x: 0.05, y: 0, z: 0) }
                Button("⬆️") { nudge(x: 0, y: 0.05, z: 0) }
                Button("⬇️") { nudge(x: 0, y: -0.05, z: 0) }
            }

            HStack(spacing: 12) {
                Button("⤺ Yaw") { rotate(yawDegrees: -10) }
                Button("Yaw ⤻") { rotate(yawDegrees: 10) }
                Button("⤺ Pitch") { rotate(pitchDegrees: -10) }
                Button("Pitch ⤻") { rotate(pitchDegrees: 10) }
            }

            HStack(spacing: 12) {
                Button("➖") { scale(by: 0.9) }
                Button("➕") { scale(by: 1.1) }
                Button("Reset") { reset() }
            }
        }
        .padding()
    }

    private func nudge(x: Float, y: Float, z: Float) {
        guard let e = submarine else { return }
        var t = e.transform
        t.translation += SIMD3<Float>(x, y, z)
        e.transform = t
        startTransform = t
    }

    private func rotate(yawDegrees: Float = 0, pitchDegrees: Float = 0, rollDegrees: Float = 0) {
        guard let e = submarine else { return }
        var t = e.transform

        let yaw = simd_quatf(angle: radians(yawDegrees), axis: [0, 1, 0])
        let pitch = simd_quatf(angle: radians(pitchDegrees), axis: [1, 0, 0])
        let roll = simd_quatf(angle: radians(rollDegrees), axis: [0, 0, 1])

        t.rotation = t.rotation * yaw * pitch * roll
        e.transform = t
        startTransform = t
    }

    private func scale(by factor: Float) {
        guard let e = submarine else { return }
        var t = e.transform
        t.scale *= SIMD3<Float>(repeating: factor)
        e.transform = t
        startTransform = t
    }

    private func reset() {
        guard let e = submarine else { return }
        e.transform = .identity
        startTransform = e.transform
    }

    private func radians(_ degrees: Float) -> Float {
        degrees * .pi / 180
    }
}

#Preview { SubmarineRealityArea() }
