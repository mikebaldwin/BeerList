//
//  BeerDetailViewController.swift
//  BeerList
//
//  Created by Michael Baldwin on 1/28/19.
//  Copyright © 2019 mikebaldwin.co. All rights reserved.
//

import UIKit

class BeerDetailViewController: UIViewController {

    // Data
    let beer: Beer
    
    // Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var taglineLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // Setup
    init(with beer: Beer) {
        self.beer = beer
        super.init(nibName: "BeerDetailViewController", bundle: Bundle.main)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = beer.name
        nameLabel.text = beer.name
        taglineLabel.text = beer.tagline
        descriptionLabel.text = beer.description
    }

}
