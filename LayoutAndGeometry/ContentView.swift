//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Nate Lee on 8/20/20.
//  Copyright © 2020 Nate Lee. All rights reserved.
//

import SwiftUI




struct OuterView: View {
    var body: some View {
        VStack {
            Text("OuterView Top") // ✅
            
            InnerView() // ✅
                .background(Color.green)
            
            Text("OuterView Bottom") // ✅
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("InnerView Left") // ✅
            
            GeometryReader { geo in
                Text("InnerView GeometryReader Center")
                    .background(Color.blue) // ✅
                    .onTapGesture {
                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                        print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                        print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                }
            }
            .background(Color.orange) // ✅
            
            Text("InnerView Right") // ✅
        }
    }
}

struct ContentView: View {
    var body: some View {
        OuterView()
            .background(Color.red) // ✅
            .coordinateSpace(name: "Custom") // ???
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
