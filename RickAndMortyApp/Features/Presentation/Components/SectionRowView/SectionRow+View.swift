//
//  CharacterRow+View.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 7/9/23.
//

import SwiftUI

struct SectionRowView: View {
    var section: SectionRowModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            AsyncImage(url: URL(string: section.image)) { image in
                image
                    .resizable()
                    .frame(width: 40, height: 40)
                    .mask(Circle())
                    .padding(12)
                    .background(Color(UIColor.systemBackground).opacity(0.3))
                    .mask(Circle())
                    .overlay(CircularView(value: section.progress))
            } placeholder: {
                ProgressView()
                    .accentColor(.white)
            }

            VStack(alignment: .leading, spacing: 8) {
                Text(section.subtitle)
                    .font(.caption.weight(.medium))
                    .foregroundStyle(.secondary)
                Text(section.title)
                    .fontWeight(.semibold)
                Text(section.text)
                    .font(.caption.weight(.medium))
                    .foregroundStyle(.secondary)
                ProgressView(value: section.progress)
                    .accentColor(.white)
            }
            Spacer()
        }
    }
}

struct SectionRowModel: Identifiable {
    let id: Int
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var progress: CGFloat
}
