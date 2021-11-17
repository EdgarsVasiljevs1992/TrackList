//
//  MovieTableViewCell.swift
//  TrackList
//
//  Created by edgars.vasiljevs on 16/11/2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    var film: Movie!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        if film != nil{
//            movieImageView.image = UIImage(named: film.poster)
//            movieLabel.text = film.movie
//            }

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
