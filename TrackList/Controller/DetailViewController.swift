//
//  ViewController.swift
//  TrackList
//
//  Created by edgars.vasiljevs on 16/11/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    var song: Song!
    var film: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if song != nil{
            trackImageView.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " -+ " + song.album
        }
            if film != nil{
                movieImageView.image = UIImage(named: film.poster)
                movieLabel.text = film.movie + " \nRelease date: " + film.year
                }
        // Do any additional setup after loading the view.
    }


}

