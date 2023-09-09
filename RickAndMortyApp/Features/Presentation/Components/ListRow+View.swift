//
//  ListRow+View.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 9/9/23.
//

import SwiftUI

struct ListRow: View {
    var title: String = ""
    var image: String = ""
    
    var body: some View {
        HStack(spacing: 16) {       
            if let url = URL(string: image) {
                AsyncImageView(url: url)
                    .frame(width: 36, height: 36)
                    .background(.ultraThinMaterial)
                    .mask(Circle())
                    .backgroundStyle(cornerRadius: 18)
            }
            
            Text(title)
                .fontWeight(.semibold)
            Spacer()
        }
    }
}
