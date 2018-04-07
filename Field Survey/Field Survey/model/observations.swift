//
//  observations.swift
//  Field Survey
//
//  Created by David Lawanson on 4/6/18.
//  Copyright © 2018 David Lawanson. All rights reserved.
//

import Foundation

struct Observation {
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    
    init(classification: Classification, title: String, description: String, date: Date) {
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(observeName: String, title: String, description: String, date: Date) {
        if let classification = Classification(rawValue: observeName) {
            self.init(classification: classification, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}

