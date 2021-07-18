//
//  AnimalModel.swift
//  AfricaAnimals
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
