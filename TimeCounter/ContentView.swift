//
//  ContentView.swift
//  TimeCounter
//
//  Created by nguyen.van.quangf on 17/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            TDetailView()
            TDetailView()
            TDetailView()
            NoteAppView()
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .ignoresSafeArea()
//        TDetailView()
//        NoteAppView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
