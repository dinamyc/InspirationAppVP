//
//  Area.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case oceanCreatures, equipment, mission
    var id: Self { self }
    var name: String { rawValue.lowercased() }
    
    var title: String{
        switch self {
        case.oceanCreatures:
            "Discover Marine Life..."
        case.equipment:
            "Inspiration 4 mission equipment..."
        case.mission:
            "Inspiration 4 mission trailer"
        }
    }
}
