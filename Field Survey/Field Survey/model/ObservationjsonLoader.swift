//
//  ObservationjsonLoader.swift
//  Field Survey
//
//  Created by David Lawanson on 4/6/18.
//  Copyright © 2018 David Lawanson. All rights reserved.
//

import Foundation

class ObservationjsonLoader {
    
    class func load(fileName: String) -> [Observation] {
        var observations = [Observation]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"), let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = ObservationjsonParser.parse(data)
        }
        
        return observations
    }
    
}
