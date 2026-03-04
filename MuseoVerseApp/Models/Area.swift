//
//  Area.swift
//  MuseoVerseApp
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
        case.submarine:
            "Discover a submarine.. "
        case.transportation:
            "Ocean transportation..."
        case.oceanCreatures:
            "Discover Marine Life..."
        }
    }
}
