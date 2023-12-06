//
//  AsyncImage+View.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 9/9/23.
//

import SwiftUI

struct AsyncImageView: View {
    let url: URL
    
    @State private var image: UIImage?
    
    var body: some View {
        Group {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
            } else {
                ProgressView()  // Placeholder till image loads
                    .accentColor(.white)
            }
        }
        .onAppear {
            Task {
                do {
                    image = try await downloadImage(url: url)
                } catch {
                    // Handle the error
                }
            }
        }
    }
    
    private func downloadImage(url: URL) async throws -> UIImage {
        let cache: NSCacheStore = NSCacheStore<String,UIImage>.shared
        
        // Check if the image is already cached
        if let cachedImage = cache[url.absoluteString] {
            return cachedImage
        }
        
        // Download the image if not cached
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let image = UIImage(data: data) {
                // Cache the downloaded image
                cache[url.absoluteString] = image
                return image
            }
        } catch {
            throw ImageError.downloadFailed
        }
        
        throw ImageError.downloadFailed
    }

    enum ImageError: Error {
        case downloadFailed
    }
}

