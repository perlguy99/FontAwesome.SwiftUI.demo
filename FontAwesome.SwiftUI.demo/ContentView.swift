//
//  ContentView.swift
//  FontAwesome.SwiftUI.demo
//
//  Created by Brent Michalski on 7/13/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FontCollectionView(fontStyle: .solid)
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("Solid")
                }

            FontCollectionView(fontStyle: .regular)
                .tabItem {
                    Image(systemName: "square")
                    Text("Regular")
                }

//            FontCollectionView(fontStyle: .light)
//                .tabItem {
//                    Image(systemName: "lightbulb")
//                    Text("Light")
//                }

            FontCollectionView(fontStyle: .brands)
                .tabItem {
                    Image(systemName: "signature")
                    Text("Brands")
                }

            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
