//
//  OceanArea.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import SwiftUI

struct OceanArea: View {
    var body: some View {
        HStack {
            ForEach(OceanCreatures.allCases) { creature in
                VStack(alignment: .leading, spacing: 10){
                    Image("oceancreture-\(creature.name)")
                        .resizable()
                        .frame(width: 180, height: 200)
                    
                    Text(creature.fullName)
                        .font(.system(size: 32, weight: .bold))
                    
                    Text(creature.about)
                        .font(.system(size: 20))
                }
                .frame(minWidth: 180, minHeight: 200)
                .padding(10)
                .glassBackgroundEffect()
            }
        }
        .padding(10)
    }
}

#Preview {
    OceanArea()
}
