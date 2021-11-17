//
//  Song.swift
//  TrackList
//
//  Created by edgars.vasiljevs on 16/11/2021.
//

import Foundation

struct Song {
    let track: String
    let album: String
    let cover: String
    
    static func createSong() -> [Song]{
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        
        for index in 0..<tracks.count{
            let song = Song(track: tracks[index], album: albums[index], cover: covers[index])
            songs.append(song)
        }
        
        return songs
    }
    
}








//var trackList = [
//       "Carly Rae Japsen - Dedicated",
//       "Dj Khaled - father of",
//       "Injury Reserve - Jailbrake",
//       "Jonas Brothers - Happiness Begins ",
//       "Joyner Lucas - adhd",
//       "Maluma - 11-11",
//       "Never Young - LOSER",
//       "Rammstein - rammstein",
//       "Skepta - Ignorance Is Bliss",
//       "Skillet - Victory",
//       "Tylor the Creator - IGOR",
//       "YG - Stop Snitching",
//   ]
