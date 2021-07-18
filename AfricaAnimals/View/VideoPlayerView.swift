//
//  VideoPlayerView.swift
//  AfricaAnimals
//
//  Created by Teemo Norman on 7/18/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
               // Text(videoTitle)
            } // VIDEOPLAYER
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            ) // OVERLAY
        } // VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}





//MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
