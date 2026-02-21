//
//  NavigationToAreas.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
            
            VStack {
                Text("Welcome To Ocean Museum")
                    .monospaced()
                    .font(.system(size: 40, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.top, 50)
                
                HStack(spacing: 25) {
                    ForEach(Area.allCases) { area in
                        NavigationLink {
                            
                            // header area
                            Text(area.title)
                                .monospaced()
                                .font(.system(size: 40, weight: .bold))
                            
                            // sub-views go here
                            if area == Area.oceanCreatures {
                                OceanArea()
                            }
                            else if area == Area.equipment {
                                EquipmentArea()
                            }
                            else if area == Area.mission {
                                SubmarineRealityArea()
                            }
                            
                        } label: {
                            Label(area.name, systemImage: "chevron.right")
                                .monospaced()
                                .font(.title)
                        }
                        .controlSize(.extraLarge)
                    }
                }
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("Ocean")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .clipped()
    }
}

#Preview {
    NavigationToAreas()
        .environment(ViewModel())
}
