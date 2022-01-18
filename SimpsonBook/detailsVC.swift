//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Esin Karan on 16.01.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var simpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = simpson?.image
        nameLabel.text = simpson?.name
        jobLabel.text = simpson?.job
    }
}
