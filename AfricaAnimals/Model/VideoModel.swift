//
//  VideoModel.swift
//  AfricaAnimals
//
//  Created by Teemo Norman on 7/18/21.
//

import SwiftUI


struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // COMPUTER PROPERTY
    var thumbnail: String {
        "video-\(id)"
    }
}
