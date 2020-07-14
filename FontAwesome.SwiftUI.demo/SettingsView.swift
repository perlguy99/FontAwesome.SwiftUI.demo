//
//  SettingsView.swift
//  FontAwesome.SwiftUI.demo
//
//  Created by Brent Michalski on 7/13/20.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("iconSize") var iconSize: Int = 50
    
    var body: some View {
        
        Form {
            Section(header: Text("Icon Size")) {
                Stepper(value: $iconSize, step: 1, onEditingChanged: {
                    print("\($0)")
                }, label: {
                    Text(String(iconSize))
                })
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
