//
//  CharacterImageViewController.swift
//  Marvel
//
//  Created by Aya on 9/22/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class CharacterImageViewController: UIViewController {

    @IBOutlet weak var imageCollectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCollectionview.dataSource = self
        imageCollectionview.delegate = self
        
    }
    

    

}
