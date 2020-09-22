//
//  HomeTableviewCell.swift
//  Marvel
//
//  Created by Aya on 9/20/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class HomeTableviewCell: UITableViewCell {
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
