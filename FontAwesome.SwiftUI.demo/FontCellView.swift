//
//  FontCellView.swift
//  FontAwesome.SwiftUI.demo
//
//  Created by Brent Michalski on 7/13/20.
//

import SwiftUI
import UIKit

struct FontCellView: View {
    @AppStorage("iconSize") var iconSize: Int = 50
    
    @State private var showingName = false
    
    let fontItem: FontAwesome
    let fontStyle: FontAwesomeStyle
    
    var body: some View {
        
        HStack {
            if showingName == false {
                Image(uiImage: UIImage.fontAwesomeIcon(name: fontItem, style: fontStyle, textColor: .black, size: CGSize(width: iconSize, height: iconSize)))
            }
            else {
                Text(fontItem.rawValue)
            }
            
        }
        .onTapGesture {
            self.showingName.toggle()
            print("Tapped \(self.fontItem.rawValue) - State \(showingName)")
        }
    }
}


struct FontCellView_Previews: PreviewProvider {
    static var previews: some View {
        FontCellView(fontItem: FontAwesome.allergies, fontStyle: .solid)
    }
}
