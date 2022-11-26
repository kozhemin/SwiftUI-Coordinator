//
//  ProfileView.swift
//  SwiftUI+Coordinator
//
//  Created by Егор Кожемин on 26.11.2022.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var coordinator: Coordinator<AppRouter>
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "brain.head.profile")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Text("Hello, Profile!")
                
                Button("Go to the about app") {
                    coordinator.show(.about)
                }.padding(.top)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
