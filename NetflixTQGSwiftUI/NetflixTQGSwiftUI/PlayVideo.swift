//
//  PlayVideo.swift
//  NetflixTQGSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 25/06/21.
//

import SwiftUI
import AVKit

struct PlayVideo: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "trailer", withExtension: "mp4")!))
            .frame(width: 500, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
    }
}

struct PlayVideo_Previews: PreviewProvider {
    static var previews: some View {
        
        PlayVideo()
    }
}
