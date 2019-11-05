//
//  ContentView.swift
//  CarearPathGuideLine
//
//  Created by abuzeid on 11/5/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let careers = CareerRepo().getCareers()
    var body: some View {
        NavigationView {
            List {
                ForEach(careers) { career in
                    Section(header: Text(career.title)) {
                        ForEach(career.jobs) { job in
                            CareerCell(job: job)
                        }
                    }
                }
            }.navigationBarTitle("Careers")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
