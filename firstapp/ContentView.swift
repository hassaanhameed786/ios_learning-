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
        VStack {
            
            VStack {
                MapView()
                    .ignoresSafeArea(edges:.top)
                    .frame(height: 300)
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text("Turtle Rock").font(.title).foregroundColor(.green)
                    
                    
                    
                    HStack {
                        Text("Joshua National Park")
                            .font(.subheadline)
                        Spacer()
                        Text("california")
                            
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()

                                    Text("About Turtle Rock").font(.title2)
                                    Text("Descriptive text goes here.")
                }
                
            }
                
                
                
                
                .padding()
                Spacer()

            
        }
    }
}
// previews the view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
