//
//  ContentView.swift
//  firstapp
//
//  Created by Hassaan Hameed on 18/07/2022.
//
import Foundation           // define functionality
import SwiftUI
import CoreLocation         // for location


// load the data from json data
// struct use the fucntional programming style

//dding Codable conformance makes it easier to move data between the structure and a data file. You’ll rely on the Decodable component of the Codable protocol later in this section to read data from file
struct Landmark: Hashable, Codable,Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    
// here we use computed type of the image
    //read the name of the image from the data,
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D { //    // property  useful for interacting with MapKit framework.

        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}



