//
//  ContentView.swift
//  firstapp
//
//  Created by Hassaan Hameed on 18/07/2022.
//

import SwiftUI
// content view protocol descibe the layout, and views content


struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}
// previews the view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
