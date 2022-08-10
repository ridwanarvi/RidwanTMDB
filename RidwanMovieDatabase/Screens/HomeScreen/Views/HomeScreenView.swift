//
//  HomeScreenViews.swift
//  RidwanMovieDatabase
//
//  Created by Ridwan Arvihafiz Bakri on 10/08/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack(spacing: 64) {
            Text("TMDB")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            NavigationLink(destination: MovieListScreenView()) {
                Text("GUEST")
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
