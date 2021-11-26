//
//  ViewController.swift
//  TrackList
//
//  Created by edgars.vasiljevs on 16/11/2021.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    var song: Song!
    var film: Movie!
    
    var webView = WKWebView()
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var watchTrailerButton: UIButton!
    
    @IBOutlet weak var movieWebView: WKWebView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if song != nil{
            trackImageView.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " -+ " + song.album
        }
        if film != nil{
            movieImageView.image = UIImage(named: film.poster)
            movieLabel.text = film.movie + " \nRelease date: " + film.year
            genreLabel.text = "Genre: \(film.genre)"
            movieWebView.isHidden = true
            }
        // Do any additional setup after loading the view.
    }

    @IBAction func playButtonTapped(_ sender: UIButton) {
        movieWebView.isHidden = false
        loadVideoToWebView()
        watchTrailerButton.isHidden = true
    }
    
    func loadVideoToWebView() {
        let urlString = film.trailerUrlString
        guard let movieUrl = URL(string: urlString) else { return  }
        movieWebView.load(URLRequest(url: movieUrl))
    }

}

