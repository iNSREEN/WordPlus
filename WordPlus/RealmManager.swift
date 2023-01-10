//
//  RealmManager.swift
//  WordPlus
//
//  Created by lulwah on 10/01/2023.
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject {
    private(set) var localRealm:Realm?
    @Published   private(set) var Models :[Model] = []
    init(){
        openRealm()
        getModels()
        
    }
    
    func openRealm()  {
        do {
            let config = Realm.Configuration(schemaVersion:1)
            Realm.Configuration.defaultConfiguration = config
            localRealm = try Realm()
            
            
            
        } catch{
            print("erorr")
        }
    }
    
    
    func addModel(ModelWord:String , ModelMeaning:String)  {
        
        if let localRealm = localRealm {
            do {
                try localRealm.write{
                    let newModel = Model(value: ["Word": ModelWord , "Meaning":ModelMeaning])
                    localRealm.add(newModel)
                    getModels()
                    print("added new model card\(newModel)")
                }
                
            }
            catch{
                print("error")
            }
        }
    }
    func getModels()  {
        if let localRealm = localRealm {
          let allModels =  localRealm.objects(Model.self)
            Models = []
            allModels.forEach{ m in
                Models.append(m)
            }
            
        }
            
    }
}
