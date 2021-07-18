//
//  ContentView.swift
//  AfricaAnimals
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets())
                    .padding(.bottom, 20)
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                    AnimalListItemView(animal: animal)
                    } //NAVIGATION
                }
            } // LIST
            .navigationBarTitle("Africa Animals", displayMode: .large)
        } // NAVIGATION
    }
}




//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
