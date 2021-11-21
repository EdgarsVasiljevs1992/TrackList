//
//  MovieTableViewController.swift
//  TrackList
//
//  Created by edgars.vasiljevs on 16/11/2021.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movies = Movie.createMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}

        // Configure the cell...
        let film = movies[indexPath.row]
//        cell.textLabel?.text = film.movie
//        cell.detailTextLabel?.text = film.year
//        cell.imageView?.image = UIImage(named: film.poster)
        
        cell.movieImageView.image = UIImage(named: film.poster)
        cell.movieLabel.text = film.movie
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 215
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let indexPath = tableView.indexPathForSelectedRow {
             print("indexPath: ", indexPath)
        // Get the new view controller using segue.destination.
             let detailVC = segue.destination as! DetailViewController
             // Pass the selected object to the new view controller.
             detailVC.film = movies[indexPath.row]
         }
     }
    
}

