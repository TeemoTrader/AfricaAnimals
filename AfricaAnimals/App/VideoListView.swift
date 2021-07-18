//
//  VideoListView.swift
//  AfricaAnimals
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - PROPERTIES
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    //MARK: - HAPTIC FEEDBACK GENERATOR
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                } // FOREACH
            } // LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        //MARK: - SHUFFLE VIDEOS AND HAPTIC ACTIVATED IN BUTTON
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } // NAVIGATION
    }
}




//MARK: - NAVIGATION
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
