//
//  MovieSection.swift
//  RidwanMovieDatabase
//
//  Created by Ridwan Arvihafiz Bakri on 10/08/22.
//

import Foundation

struct MovieSection: Identifiable {
    
    let id = UUID()
    
    let movies: [Movie]
    let endpoint: MovieListEndpoint
    var title: String {
        endpoint.description
    }
}
