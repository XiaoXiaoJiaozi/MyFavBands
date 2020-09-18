//
//  DetailViewController.swift
//  MyFavBands
//
//  Created by Mom on 9/17/20.
//  Copyright © 2020 Jinxiao Ning. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    //********1) Remove label from DetailViewController
    //            -  add an ImageView
    //            -  create outlet of imageview and name productImageView
    
    //********2) Comment out (1) line below
//    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var ProductImageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
        //********3) Update (6) lines of code below
            if let photo = ProductImageView {
                photo.image = UIImage(named:detailItem!)
            }
        }else{
            ProductImageView.image = UIImage(named:"main.jpg")
            title = "My Bands"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    
    //********4) Update next line of code below
    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

