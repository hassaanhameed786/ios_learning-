//
//  CircleImage.swift
//  firstapp
//
//  Created by Hassaan Hameed  on 19/07/2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock").resizable().clipShape(Circle())
        
            .overlay(){
                Circle().stroke(.white,lineWidth: 4)
            }
            .shadow(radius: 7)
    }
    
    struct CircleImage_Previews: PreviewProvider {
        static var previews: some View {
            CircleImage()
        }
    }
}
