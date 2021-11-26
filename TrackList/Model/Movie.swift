//
//  Movie.swift
//  TrackList
//
//  Created by edgars.vasiljevs on 16/11/2021.
//

import Foundation

struct Movie {
    let movie: String
    let year: String
    let poster: String
    var genre: String
    var trailerUrlString: String
    
    static func createMovie() -> [Movie]{
        var films: [Movie] = []
        
        let movies = DataManager.shared.movie
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        let genres = DataManager.shared.movieGenres
        let trailerUrlStrings = DataManager.shared.movieTrailerUrls
        
        for i in 0..<movies.count{
            let movie = Movie(movie: movies[i], year: years[i], poster: posters[i],genre: genres[i],trailerUrlString: trailerUrlStrings[i])
            films.append(movie)
        }
        
        return films
    }
    
}
