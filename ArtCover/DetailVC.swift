//
//  DetailVC.swift
//  ArtCover
//
//  Created by Артур Дохно on 08.11.2021.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet var image: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    var trackTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: trackTitle)
        titleLabel.text = trackTitle
        titleLabel.numberOfLines = 0
    }
    
}
