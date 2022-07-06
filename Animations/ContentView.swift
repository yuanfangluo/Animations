//
//  ContentView.swift
//  Animations
//
//  Created by sheng on 2022/7/6.
//

import SwiftUI

struct Animation: Identifiable {
    var id = UUID()
    let text: String
}

struct ContentView: View {
    
//    let animations = [
//        Animation(text: "HeartPluse", dest: {
//            HeartPulseView()
//        }),
//        Animation(text: "SpinningView", dest: {
//            SpinningView()
//        })
//    ]
    
    var body: some View {
            NavigationStack {
                List{
                    NavigationLink {
                        HeartPulseView()
                    } label: {
                        Text("HeartPluse")
                    }
                    NavigationLink {
                        SpinningView()
                    } label: {
                        Text("SpinningView")
                    }
                    NavigationLink {
                        ExplodingView()
                    } label: {
                        Text("ExplodingView")
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
