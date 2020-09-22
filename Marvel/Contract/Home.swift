//
//  HomeContract.swift
//  Marvel
//
//  Created by Aya on 9/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import Foundation

import RealmSwift
protocol IHomeView{
    func showDataInHomeView(characterObjList : [Character],characterOffset : Int)
}


protocol IHomePresenter{
    func getDataFromHomeModel(offset : Int)
    func onSuccess(characterObjList : [Character] , characterOffset : Int)
    func onFail()
}


protocol IHomeModel{
    func getCharacters(offset : Int)
}

protocol ILocalHomeModel {
     func saveCharacteInRealm(chararcterObjList : [CharacterData])
     func fetchCharFromRealm()-> Results<CharacterData>
}
