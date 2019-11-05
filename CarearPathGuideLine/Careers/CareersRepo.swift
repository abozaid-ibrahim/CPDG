//
//  CareersRepo.swift
//  CarearPathGuideLine
//
//  Created by abuzeid on 11/6/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
struct CareerRepo {
    func getCareers() -> [CareerCategory] {
        let job1 = Job(id: UUID(uuidString: "2fd69de8-788a-4c6b-b382-148ca7418dcf")!, title: "iOS Developer", logo: "apple")
        let job2 = Job(id: UUID(uuidString: "2fd69de8-788a-4c6b-b382-148ca7418dcf")!, title: "Android Developer", logo: "android")
        return [CareerCategory(id: UUID(uuidString: "2fd69de8-788a-4c6b-b382-148ca7418dca")!, title: "Mobile Developers", jobs: [job1, job2])]
    }
}
