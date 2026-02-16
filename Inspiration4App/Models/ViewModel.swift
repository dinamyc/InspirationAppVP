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
    //var isShowingMixedRocket : Bool = false
    
    var capsuleRealityAreaId: String = "CapsuleRealityArea"
    var fullRocketRealityArea: String = "FullRocketRealityArea"
    //var mixedRocketRealityArea: String = "MixedRocketRealityArea"
}
