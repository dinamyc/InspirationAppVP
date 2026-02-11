//
//  Crew.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import Foundation

enum Crew : String, Identifiable, CaseIterable, Equatable {
    
    case jared, haley, chris, sian
    var id: Self { self }
    
    var fullName: String {
        switch self {
        case .jared:
            "Jared Isaacman"
        case .haley:
            "Haley Arceneaux"
        case .chris:
            "Chris Smbroski"
        case .sian:
            "Dr. Sian Protector"
        }
    }
    
    var about: String {
        switch self {
        case .jared:
            "Jared Isaacman is Founded"
        case .haley:
            "Haley Arceneaux is Waiter"
        case .chris:
            "Chris Smbroski is Progammer"
        case .sian:
            "Dr. Sian Protector is Elementary"
        }
    }
}
