//
//  ViewModel.swift
//  Inspiration4App
//
//  Created by Jose Luis Enriquez on 2/11/26.
//

import Foundation

@Observable
class ViewModel
{
    var navigationPath : [Area] = []
    var isShowingRocketCapsule : Bool = false
    var isShowingFullRocket : Bool = false
    
    var capsuleRealityAreaId: String = "BoatRealityArea"
    var fullRocketRealityArea: String = "FullSubmarineRealityArea"
}
