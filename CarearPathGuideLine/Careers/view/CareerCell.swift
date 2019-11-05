//
//  CareerCell.swift
//  CarearPathGuideLine
//
//  Created by abuzeid on 11/6/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import SwiftUI

struct CareerCell: View {
    var job: Job
    var body: some View {
        NavigationLink(destination: JobLevelsView(job:job)){
            HStack {
                Image(job.logo).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 2))
                VStack(alignment: .leading) {
                    Text(job.title)
                    Text(job.title)
                }.layoutPriority(1)
                Spacer()
                
                Text("1").font(.caption)
                    .padding()
                   
                     .background(Color.black)
                     .foregroundColor(.white)
                    .clipShape(Circle())
                   
            }
        }}
}

struct CareerCell_Previews: PreviewProvider {
    static var previews: some View {
        CareerCell(job: CareerRepo().getCareers().first!.jobs.first!)
    }
}
