//
//  HomeScreenViews.swift
//  RidwanMovieDatabase
//
//  Created by Ridwan Arvihafiz Bakri on 10/08/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 180) {
                Text("TMDB")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: MovieListScreen()) {
                    Text("GUEST")
                }
            }
            .padding()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
