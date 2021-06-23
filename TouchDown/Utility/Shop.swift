//
//  Shop.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/06.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var showingProduct:Bool = false
    @Published var selectedProduct:Product? = nil
    
}
