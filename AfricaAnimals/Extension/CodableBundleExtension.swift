//
//  CodableBundleExtension.swift
//  AfricaAnimals
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        
//MARK: - 1. Locate Json File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        
        
//MARK: - 2. Create a property for the data (undecoded)
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        
//MARK: - 3. Create a decoder
        let decoder = JSONDecoder()
        
        
//MARK: - 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle.")
        }
        
        
        
//MARK: - 5. Return the ready-to-use-data
        return loaded
    }
}
