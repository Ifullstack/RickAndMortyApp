//
//  ListRow+View.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 9/9/23.
//

import SwiftUI

struct ListRow: View {
    var title = ""
    var image = ""
    
    var body: some View {
        HStack(spacing: 16) {            
            AsyncImage(url: URL(string: image)) { image in
                image
                    .resizable()
                    .frame(width: 36, height: 36)
                    .background(.ultraThinMaterial)
                    .mask(Circle())
                    .backgroundStyle(cornerRadius: 18)
                    
            } placeholder: {
                ProgressView()
                    .accentColor(.white)
            }
            
            Text(title)
                .fontWeight(.semibold)
            Spacer()
        }
    }
}
