//
//  Product.swift
//  Smart Inventory
//
//  Created by Bharadwaj Dasari on 11/18/18.
//  Copyright © 2018 Jennaikode,Vamshi Raj. All rights reserved.
//

import Foundation

struct Product {
    var name:String
    var description:String
    var imageURL:String
    var quantity:Int
    var price:Double
    
    var products:[Product] = []
    
    subscript(index:Int) -> Product{
        return products[index]
    }
    
    mutating func addProducts(product:Product){
        products.append(product)
    }
    
    
}
