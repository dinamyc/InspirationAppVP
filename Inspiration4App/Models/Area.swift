//
//  Area.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case oceanCreatures, transportation, submarine
    var id: Self { self }
    var name: String { rawValue.lowercased() }
    
    var title: String{
        switch self {
        case.oceanCreatures:
            "Discover Marine Life..."
        case.transportation:
            "Ocean transportation..."
        case.submarine:
            "Discover a submarine.. "
        }
    }
}
