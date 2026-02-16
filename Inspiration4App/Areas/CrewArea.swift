//
//  CrewArea.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import SwiftUI

struct CrewArea: View {
    var body: some View {
        HStack {
            ForEach(Crew.allCases) { crew in
                VStack(alignment: .leading, spacing: 10){
                    Image("crew-\(crew.name)")
                        .resizable()
                        .frame(width: 180, height: 200)
                    
                    Text(crew.fullName)
                        .font(.system(size: 32, weight: .bold))
                    
                    Text(crew.about)
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
    CrewArea()
}
