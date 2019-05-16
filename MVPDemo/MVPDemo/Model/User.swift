//
//  User.swift
//  MVPDemo
//
//  Created by Mohamed Kelany on 5/16/19.
//  Copyright © 2019 Mohamed Kelany. All rights reserved.
//

import Foundation
import ObjectMapper


class User: Mappable {
    
    private var name: String!
    private var email: String!
    private var address: Address!
    
    var _name: String {
        get {
            if name == nil{
                name = ""
            }
            return name
        } set {
            name = newValue
        }
    }
    
    var _email: String {
        get {
            if email == nil{
                email = ""
            }
            return email
        } set {
            email = newValue
        }
    }
    
    var _address: Address {
        get {
            if address == nil{
                address = Address()
            }
            return address
        } set {
            address = newValue
        }
    }
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        _name <- map["name"]
        _email <- map["email"]
        _address <- map["address"]
    }
    
    
}
