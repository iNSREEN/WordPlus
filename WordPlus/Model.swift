//
//  Model.swift
//  WordPlus
//
//  Created by lulwah on 10/01/2023.
//

import Foundation
import RealmSwift

class Model: Object,ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var Word = ""
    @Persisted var Meaning = ""
    
    

    
}
