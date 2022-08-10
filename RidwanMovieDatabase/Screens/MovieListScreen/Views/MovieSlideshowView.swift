//
//  MovieSlideshowView.swift
//  RidwanMovieDatabase
//
//  Created by Ridwan Arvihafiz Bakri on 10/08/22.
//

import Foundation
import SwiftUI

struct MovieSlideshowView: View {
    
    let title: String
    let movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .top, spacing: 16) {
                    ForEach(self.movies) { movie in
                        VStack(alignment: .leading, spacing: 8) {
                            AsyncImage(
                                url: movie.posterURL,
                                content: { image in
                                    image.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxWidth: 180, maxHeight: 320)
                                }, placeholder: {
                                    ProgressView()
                                }
                            ).frame(width: 180, height: 320)
                            Text(movie.title)
                                .font(.headline)
                                .lineLimit(2)
                                .frame(maxWidth: 180)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
            }
        }
    }
}
