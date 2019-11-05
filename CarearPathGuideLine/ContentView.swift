//
//  ContentView.swift
//  CarearPathGuideLine
//
//  Created by abuzeid on 11/5/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let
    let jobs = ["iOS Developer", "Android Developer"]
    var body: some View {
        List{
            Section(header: Text("Mobile Developers"))
            ForEach(jobs,id:\.self){section in
                 Text(section)
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
