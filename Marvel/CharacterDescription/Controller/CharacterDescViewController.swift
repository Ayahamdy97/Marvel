//
//  CharacterDescViewController.swift
//  Marvel
//
//  Created by Aya on 9/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class CharacterDescViewController: UIViewController ,ICharacterDescView{
   

    @IBOutlet weak var charDescTableview: UITableView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var imageView: UIView!
    let size = "/portrait_incredible."
    var imageUrl : String?
    var charObj : Character?
    var charDescPresenterObj : ICharacterDescPresenter?
    var seriesImages : [ResultImage] = [ResultImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        charDescPresenterObj = CharacterDescPresenter(view: self)
        //series
        charDescPresenterObj?.getImagedFromModel(myResourceURI: (charObj?.series?.items![0].resourceURI)!)
        
        //comics
        //charDescPresenterObj?.getImagedFromModel(myResourceURI: (charObj?.comics?.items![0].resourceURI)!)
        
        //events
     //   charDescPresenterObj?.getImagedFromModel(myResourceURI: (charObj?.events?.items![0].resourceURI)!)
        
imageUrl = charObj?.thumbnail?.path

image.sd_setImage(with: URL(string: imageUrl! + size + "jpg"), placeholderImage:UIImage(named: "placeholder.png"))
        

        
imageView.layer.shadowPath =  UIBezierPath(rect:imageView.bounds).cgPath
imageView.layer.shadowRadius = 10
imageView.layer.shadowOffset = .zero
imageView.layer.shadowOpacity = 0.1
imageView.layer.cornerRadius = 10

imageView.backgroundColor = .clear
let blurEffect = UIBlurEffect(style: .dark)
let blurView = UIVisualEffectView(effect: blurEffect)
blurView.translatesAutoresizingMaskIntoConstraints = false
imageView.insertSubview(blurView, at: 0)
NSLayoutConstraint.activate([blurView.heightAnchor.constraint(equalTo: imageView.heightAnchor) , blurView.widthAnchor.constraint(equalTo:imageView.widthAnchor)])
    }
    
func showSeriesDataInHomeView(result: [ResultImage]) {
    if result.count != 0 {
        seriesImages = result
        print("series images")
        print(seriesImages.count)
    }else{
        print("error returning series images")
    }

}
       
    

}
