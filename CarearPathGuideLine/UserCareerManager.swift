//
//  UserCareerManager.swift
//  CarearPathGuideLine
//
//  Created by abuzeid on 11/6/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import SwiftUI

class UserCareerManager :ObservableObject{
    @Published private var items = [Job]()

    var currentLevel: CareerLevel {
        return .fresh
    }

    func add(item: Job) {
        items.append(item)
    }
    
    func contains(item: Job)->Bool {
        return items.contains(where: {$0 == item})
    }
    func remove(item: Job) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
enum CareerLevel{
    case fresh,junior,midLevel,midSenior,senior
}
