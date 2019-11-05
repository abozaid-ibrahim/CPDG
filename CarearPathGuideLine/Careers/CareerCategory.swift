//
//  Categories.swift
//  CarearPathGuideLine
//
//  Created by abuzeid on 11/6/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
struct  CareerCategory:Identifiable {
    var id:UUID
    var title:String
    var jobs:[Job]
    
    
}
struct Job:Identifiable {
    var id: UUID
    var title:String
    var logo:String
}
