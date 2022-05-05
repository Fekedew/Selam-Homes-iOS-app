//
//  ContentView.swift
//  SelamHomes
//
//  Created by Fekedew on 05/05/2022.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}

struct ContentView: View {
    
    @State private var showLoading: Bool = false
    var body: some View {
        VStack {

            TabView {
                WebView(url: URL(string: "https://www.selamhomes.com")!, showLoading: $showLoading)
                    .overlay(showLoading ? ProgressView("Loading...").toAnyView(): EmptyView().toAnyView())
                
                 .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
               }
                
                WebView(url: URL(string: "https://www.selamhomes.com/?post_type=hp_listing")!, showLoading: $showLoading)
                    .overlay(showLoading ? ProgressView("Loading...").toAnyView(): EmptyView().toAnyView())
                
                 .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
              }
                
                WebView(url: URL(string: "https://www.selamhomes.com/add-listings/")!, showLoading: $showLoading)
                    .overlay(showLoading ? ProgressView("Loading...").toAnyView(): EmptyView().toAnyView())
                
                 .tabItem {
                    Image(systemName: "plus")
                    Text("Add")
              }
                
                WebView(url: URL(string: "https://www.selamhomes.com/account/")!, showLoading: $showLoading)
                    .overlay(showLoading ? ProgressView("Loading...").toAnyView(): EmptyView().toAnyView())
                
                 .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
              }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

