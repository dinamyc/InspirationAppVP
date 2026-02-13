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
            Text("Welcome to the Inspiration 4 Mission By Space X")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 100)
            
            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                        
                        // sub-views go here
                        if area == Area.astronauts {
                            
                        }
                        else if area == Area.astronauts {
                            
                        }
                        else if area == Area.astronauts {
                            
                        }
                        
                        Spacer()
                    } label : {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                    .controlSize(.extraLarge)
                }
            }
        }
        .background() {
            Image("inspiration4")
        }
    }
}

#Preview {
    NavigationToAreas()
}
