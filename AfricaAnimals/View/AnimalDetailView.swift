//
//  AnimalDetailView.swift
//  AfricaAnimals
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //MARK: - HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                
                //MARK: - TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                
                //MARK: - HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                //MARK: - GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness In Pictures")
                    InsetGalleryView(animal: animal)
                } // GROUP
                .padding(.horizontal)
                
                
                //MARK: - FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(animal: animal)
                } // GROUP
                .padding(.horizontal)
                
                
                
                //MARK: - DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                } // GROUP
                .padding(.horizontal)
                
                
                //MARK: - MAP
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                } //G GROUP
                .padding(.horizontal)
                
                
                
                //MARK: - LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
                } // GROUP
                .padding(.horizontal)
                
            } // VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } // SCROLL
        
    }
}






//MARK: - PREVIEW : DECODED JSON USING ANIMAL MODEL AND SAVED TO ANIMALS THEN CALLED IT IN PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
        AnimalDetailView(animal: animals[0])
        }
        
    }
}
