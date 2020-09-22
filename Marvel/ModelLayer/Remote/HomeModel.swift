//
//  HomeModel.swift
//  Marvel
//
//  Created by Aya on 9/20/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import Foundation
import Alamofire

//Fetching character list from api and retrieve it to home screen
class HomeModel : IHomeModel {
   

    var homePresenterObj : IHomePresenter!
    
    init(presenter : IHomePresenter) {
        homePresenterObj = presenter
    }

    func getCharacters(offset: Int) {
        var charList = [Character]()
 Alamofire.request("https://gateway.marvel.com/v1/public/characters?ts=101&apikey=c0bc2e4c66cf92dfb3d5be0acecc794b&hash=b156f21ebb6beabae28f94c98abbe87d&offset=\(offset)").responseJSON { (response) in
            if let JSON = response.result.value{
        do{
                
            let marvel = try JSONDecoder().decode(Marvel.self, from: response.data!)
            
      //     marvel.data?.offset
            
            
            
    for item in (marvel.data?.results)!{
        var characterObj = Character(id: item.id!, name: item.name!, resultDescription: item.resultDescription!, modified: item.modified!, thumbnail: item.thumbnail!, resourceURI: item.resourceURI!, comics: item.comics!, series: item.series!, stories: item.stories!, events: item.events!, urls: item.urls!)
        charList.append(characterObj)
        
       // print(characterObj.name!)
            }
            self.homePresenterObj.onSuccess(characterObjList: charList, characterOffset: (marvel.data?.offset)!)
            //print(marvel.data?.results?.count)
            print("data retrieved 💃🏻")
                   
            }catch {
              print(error)
                self.homePresenterObj.onFail()
                }
            }
          
            
        }
    }
    
  
}




/*
 //"http://gateway.marvel.com/v1/public/series/15?ts=101&apikey=c0bc2e4c66cf92dfb3d5be0acecc794b&hash=b156f21ebb6beabae28f94c98abbe87d
    
    //"http://gateway.marvel.com/v1/public/series/7?ts=101&apikey=c0bc2e4c66cf92dfb3d5be0acecc794b&hash=b156f21ebb6beabae28f94c98abbe87d
 */
