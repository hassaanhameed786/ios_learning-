//
//  LandmarkDetail.swift
//  firstapp
//
//  Created by Hassaan Hameed on 20/07/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    var body: some View {
        
        
        VStack {
            
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges:.top)
                    .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name).font(.title).foregroundColor(.green)
                    
                    
                    
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()

                    Text("About \(landmark.name)")
                    Text(landmark.description)
                    
                    
                }
                
            }
                
                
                
                
                .padding()
                Spacer()

            
        }
        
        .navigationTitle(landmark.name)
                .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
