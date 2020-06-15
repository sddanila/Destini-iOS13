//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let story: String
    let choice1: String
    let choice2: String
    let choice1Destination : Int
    let choice2Destination: Int
    
    init(s: String, c1: String, c1D: Int, c2: String, c2D: Int) {
        self.story = s
        self.choice1 = c1
        self.choice2 = c2
        self.choice1Destination = c1D
        self.choice2Destination = c2D
    }
}
