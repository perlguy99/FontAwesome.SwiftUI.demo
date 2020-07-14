//
//  FontCollectionView.swift
//  FontAwesome.SwiftUI.demo
//
//  Created by Brent Michalski on 7/13/20.
//

import SwiftUI

struct FontCollectionView: View {
    var fontStyle: FontAwesomeStyle = .solid
    let columns = [ GridItem(.adaptive(minimum: 80)) ]
    
    var body: some View {
        
        VStack {
            VStack {
                Text(self.fontStyle.rawValue.uppercased()).font(.largeTitle)
                Text("Tap icon to see name \(FontAwesome.fontList(style: self.fontStyle).count)")
            }
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(FontAwesome.fontList(style: self.fontStyle), id: \.self) { fontItem in
                        FontCellView(fontItem: fontItem, fontStyle: self.fontStyle)
                    }
                }
                .padding(.horizontal)
            }
            
        }
    }
}

struct FontCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        FontCollectionView(fontStyle: .light)
    }
}
