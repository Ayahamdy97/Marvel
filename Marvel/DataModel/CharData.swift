//
//  CharDataModel.swift
//  Marvel
//
//  Created by Aya on 9/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//


import RealmSwift
import Foundation
class CharacterData : Object{
   @objc dynamic var charName : String = ""
  @objc dynamic var charImage : String = ""
}
