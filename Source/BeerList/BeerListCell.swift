//
//  BeerListCell.swift
//  BeerList
//
//  Created by Michael Baldwin on 1/30/19.
//  Copyright © 2019 mikebaldwin.co. All rights reserved.
//

import UIKit

class BeerListCell: UITableViewCell {

    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
