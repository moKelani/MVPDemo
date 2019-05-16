//
//  Address.swift
//  MVPDemo
//
//  Created by Mohamed Kelany on 5/16/19.
//  Copyright © 2019 Mohamed Kelany. All rights reserved.
//

import Foundation
import ObjectMapper

class Address: Mappable {
    private var street: String!
    private var suite: String!
    
    var _street: String {
        get {
            if street == nil{
                street = ""
            }
            return street
        } set {
            street = newValue
        }
    }
    
    var _suite: String {
        get {
            if suite == nil{
                suite = ""
            }
            return suite
        } set {
            suite = newValue
        }
    }
    
    init(){}
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        _street <- map["street"]
        _suite <- map["suite"]
    }
    
    
}
