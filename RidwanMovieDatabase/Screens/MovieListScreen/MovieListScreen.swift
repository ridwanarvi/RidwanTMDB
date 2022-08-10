//
//  MovieListScreenView.swift
//  RidwanMovieDatabase
//
//  Created by Ridwan Arvihafiz Bakri on 10/08/22.
//

import SwiftUI

struct MovieListScreen: View {
    @StateObject private var movieListViewModel = MovieListViewModel()

    var body: some View {
        List {
            ForEach(movieListViewModel.sections) {
                MovieSlideshowView(title: $0.title,
                                   movies: $0.movies)
            }
            .listRowInsets(.init(top: 16, leading: 16, bottom: 16, trailing: 16))
            .listRowSeparator(.hidden)
        }
        .task { fetchMovies() }
        .refreshable { fetchMovies() }
        .listStyle(.plain)
        .navigationTitle("TMDB")
    }
    
    @Sendable
    private func fetchMovies() {
        Task { await movieListViewModel.fetchMovies() }
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
