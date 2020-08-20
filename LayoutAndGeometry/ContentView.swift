//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Nate Lee on 8/20/20.
//  Copyright © 2020 Nate Lee. All rights reserved.
//

import SwiftUI




struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            // .position(x: 100, y: 100) // Results in a bigger view.
            .background(Color.red)
            .offset(x: 100, y: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
