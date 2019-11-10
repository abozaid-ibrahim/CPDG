//
//  JobLevelsView.swift
//  CarearPathGuideLine
//
//  Created by abuzeid on 11/6/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import SwiftUI

struct JobLevelsView: View {
    var job: Job

    var isMyJob: Bool {
        return self.careerManager.contains(item: self.job)
    }

    @EnvironmentObject var careerManager: UserCareerManager
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(job.logo)
                Text("\(job.id)").background(Color.gray).foregroundColor(Color.white).offset(x: -5, y: -5)
            }
            Text("Levels")

            Button(isMyJob ? "Remove it" : "This is my Career") {
                self.careerManager.add(item: self.job)
            }
        }
    }
}

struct JobLevelsView_Previews: PreviewProvider {
    static let manager = UserCareerManager()
    static var previews: some View {
        JobLevelsView(job: CareerRepo().getCareers().first!.jobs.first!).environmentObject(manager)
    }
}
