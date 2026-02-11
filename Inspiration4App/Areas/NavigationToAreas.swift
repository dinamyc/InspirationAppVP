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
            NavigationLink {
                Text("Hello World 1 Nav 1")
            } label : {
                Label("Hola 1", systemImage: "chevron.right")
            }
            
            NavigationLink {
                Text("Hello World 2 Nav 2")
            } label : {
                Label("Hola 2", systemImage: "chevron.right")
            }
            
            NavigationLink {
                Text("Hello World 3 Nav 3")
            } label : {
                Label("Hola 3", systemImage: "chevron.right")
            }
        }
    }
}

#Preview {
    NavigationToAreas()
}
