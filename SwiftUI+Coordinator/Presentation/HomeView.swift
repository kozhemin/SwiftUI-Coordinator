//
//  ContentView.swift
//  SwiftUI+Coordinator
//
//  Created by Егор Кожемин on 26.11.2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var coordinator: Coordinator<AppRouter>
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                
                Button("Go to the profile") {
                    coordinator.show(.profile)
                }.padding(.top)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
