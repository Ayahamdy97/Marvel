//
//  CharDescModel.swift
//  Marvel
//
//  Created by Aya on 9/22/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import Foundation
import RealmSwift
class LocalHomeModel:ILocalHomeModel{
    
    
    
    
    let realm = try! Realm()
   
    
    var homePresenterObj : IHomePresenter!
      init(presenter : IHomePresenter) {
          homePresenterObj = presenter
      }
    
    
    func saveCharacteInRealm(chararcterObjList: [CharacterData])  {
        
        do{
            try realm.write {
                realm.add(chararcterObjList)
                 print("added")
            }

        }catch{
            print("error in saving \(error)")
        }

    }
 
    func fetchCharFromRealm()-> Results<CharacterData>{
        let retrievedObj = realm.objects(CharacterData.self)
        print(retrievedObj)
        print("fetched from realm")
        return retrievedObj
    }
}
