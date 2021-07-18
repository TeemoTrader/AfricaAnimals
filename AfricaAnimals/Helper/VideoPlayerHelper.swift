//
//  VideoPlayerHelper.swift
//  AfricaAnimals
//
//  Created by Teemo Norman on 7/18/21.
//

import Foundation
import AVKit


var videoPlayer: AVPlayer?


//MARK: - MAKES THE VIDEO AUTOPLAY
func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer (url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
