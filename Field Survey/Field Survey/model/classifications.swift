//
//  classifications.swift
//  Field Survey
//
//  Created by David Lawanson on 4/6/18.
//  Copyright © 2018 David Lawanson. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
    
}
