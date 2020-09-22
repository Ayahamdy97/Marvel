//
//  HomeViewController.swift
//  Marvel
//
//  Created by Aya on 9/20/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController , IHomeView{
    
    
    var myOffset : Int?
    var homePresenterObj : IHomePresenter?
    var charList = [Character]()
    @IBAction func searchBtn(_ sender: Any) {
       let storyboard =  UIStoryboard(name: "Filter", bundle: nil)
        let filterVC = storyboard.instantiateViewController(identifier: "filter") as! FilterViewController
        self.present(filterVC, animated: true, completion: nil)
    }
    @IBOutlet weak var homeTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        homePresenterObj = HomePresenter(view: self)
        homePresenterObj?.getDataFromHomeModel(offset: 0)
     
     
     

    }
    
    func showDataInHomeView(characterObjList: [Character], characterOffset: Int) {
           print("aya")
        if characterObjList.count != 0 {
            myOffset = characterOffset
            if myOffset == 0 {
                print("data in view")
                charList = characterObjList
                print(charList.count)
                
              
            }else{
                for item in characterObjList{
                    charList.append(item)
                }
            }
            
            homeTableview.reloadData()
        }
        
       }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    //    print("scrolled")
    }

}
