//
//  ContentView.swift
//  Animations
//
//  Created by sheng on 2022/7/6.
//

import SwiftUI

enum Destination: String, CaseIterable, Identifiable {
    var id: String {
        rawValue
    }
    
    case heartPulse, spinning, exploding, rollinRainbow, dragNDropDots, dancingDots
    
    @ViewBuilder
    static func view(forSelection selection: Destination) -> some View {
        switch selection {
        case .heartPulse:
            HeartPulseView()
        case .spinning:
            SpinningView()
        case .exploding:
            ExplodingView()
        case .rollinRainbow:
            RollinRainbowView()
        case .dragNDropDots:
            DragNDropDotsView()
        case .dancingDots:
            DancingDotsView()
        }
    }
    
}

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            List(Destination.allCases){ dest in
                NavigationLink {
                    Destination.view(forSelection: dest)
                } label: {
                    Text(dest.rawValue)
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
