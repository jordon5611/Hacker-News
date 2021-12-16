//
//  ContentView.swift
//  Hacker News
//
//  Created by Waqar naeem on 17/11/2021.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var Networkmanager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            
            List(Networkmanager.post) { Post in
                NavigationLink(destination: DetailsView(Url: Post.url)){
                HStack {
                    Text(String(Post.points))
                    Text(Post.title)
                }
                }
                
                    
            }
            .navigationBarTitle("Hacker News")
            
        }
        .onAppear(perform: {
            Networkmanager.fetchData()
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


