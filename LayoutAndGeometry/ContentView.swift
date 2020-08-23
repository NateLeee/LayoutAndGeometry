//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Nate Lee on 8/20/20.
//  Copyright © 2020 Nate Lee. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader { fullView in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 50) { index in
                        GeometryReader { geo in
                            Rectangle()
                                .fill(self.colors[index % 7])
                                .frame(height: 150)
                                .rotation3DEffect(
                                    .degrees(
                                        -Double(
                                            geo.frame(in: .global).midX - fullView.size.width / 2
                                            ) / 9
                                    ),
                                    axis: (x: 0, y: 1, z: 0)
                            )
                        }
                        .frame(width: 150)
                        .border(Color.red, width: 1)
                    }
                }
                .padding(.horizontal, (fullView.size.width - 150) / 2)
                .border(Color.blue, width: 1)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
