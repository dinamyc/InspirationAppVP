//
//  OceanCreatures.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import Foundation

enum OceanCreatures : String, Identifiable, CaseIterable, Equatable
{
    case whale, octopus, shark, turtle
    var id: Self { self }
    var name: String { rawValue }
    
    var fullName: String {
        switch self {
        case .whale:
            "Blue Whale"
        case .octopus:
            "Giant Pacific Octopus"
        case .shark:
            "White Shark"
        case .turtle:
            "Sea Turtle"
        }
    }
    
    var about: String {
        switch self {
        case .whale:
            "The blue whale is the largest animal ever known to have lived on Earth. Despite its enormous size, it feeds mainly on tiny shrimp-like creatures called krill and can consume up to four tons of them per day."
        case .octopus:
            "The giant Pacific octopus is highly intelligent and known for its problem-solving skills. It can change color and texture to blend into its surroundings and escape predators."
        case .shark:
            "The great white shark is one of the ocean’s most powerful predators. With its keen senses and incredible speed, it plays a crucial role in maintaining the balance of marine ecosystems."
        case .turtle:
            "Sea turtles are ancient marine reptiles that have existed for over 100 million years. They migrate long distances across oceans and often return to the same beaches where they were born to lay their eggs."
        }
    }
}
