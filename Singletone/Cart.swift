//
//  Cart.swift
//  Singletone
//
//  Created by shoeb on 08/02/23.
//

import Foundation

class Cart{
    var noItem : Int
    static let shared = Cart(items : 0)
    private init(items : Int){
        self.noItem = items
    }
}
