//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/05.
//

import Foundation

extension Bundle {
    
    func decode<T:Codable>(_ file:String) ->T{
        
        //1. locate json file
        //2. Create a property for the data
        //3. Crate a decoder
        //4. Create a property for ther decode data
        //5. Return ready to use data
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in Bundle")
        }
        
        guard let data = try? Data.init(contentsOf: url) else {
            fatalError("Failed to load \(file) from in Bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodeData = try?decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) in bundle")
        }
        return decodeData
    }
}
