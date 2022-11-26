//
//  AboutView.swift
//  SwiftUI+Coordinator
//
//  Created by Егор Кожемин on 26.11.2022.
//

import SwiftUI

struct AboutView: View {
    @EnvironmentObject var coordinator: Coordinator<AppRouter>
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Text("About View!")
                
                Button("back") {
                    coordinator.dismiss()
                }.padding(.top)
                
                Button("Go to home") {
                    coordinator.dismissAndToRoot()
                }.padding(.top)
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
