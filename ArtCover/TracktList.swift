//
//  TracktList.swift
//  ArtCover
//
//  Created by Артур Дохно on 08.11.2021.
//

import UIKit

class TracktList: UITableViewController {
    
    let imageNameArray = ["A Moment ApartDeluxe Edition",
                          "Still Loving You Scorpions",
                          "The Only Static-X",
                          "Riders on the Storm The Doors",
                          "Старый мир Bakhtin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageNameArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as? DetailVC
                detailsVC?.trackTitle = imageNameArray[indexPath.row]
            }
        }
    }

}
