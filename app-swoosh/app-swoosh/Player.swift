//
//  Player.swift
//  app-swoosh
//
//  Created by Marcel Duarte on 8/8/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import Foundation

// Always use a struct whenever you can instead of a Class. Struct is a VALUE type - much faster than a class.
struct Player {
    var desiredLeague: String!
    var selectedSkillLevel: String!
    
    // If you can promise that data is going to be there, you can make it implicitly unwrapped. If you don't know, you need to make it an optional.
}
