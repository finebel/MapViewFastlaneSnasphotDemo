//
//  ContentView.swift
//  MapViewSnasphot
//
//  Created by Finn Ebeling on 23.11.23.
//

import SwiftUI
import MapKit

struct Item: Identifiable {
    let id = UUID()
    let coord: CLLocationCoordinate2D
}

struct ContentView: View {
    private let items = createPassingItems()
    
    var body: some View {
        Map(
            coordinateRegion: .constant(MKCoordinateRegion(MKMapRect.world)),
            annotationItems: items
        ) { item in
            MapMarker(coordinate: item.coord)
        }
    }
    
    private static func createFailingItems() -> [Item] {
        var res: [Item] = []
        stride(from: -50, through: 50, by: 5).forEach { lat in
            stride(from: -50, through: 100, by: 5).forEach { long in
                res.append(Item(coord: CLLocationCoordinate2D(latitude: lat, longitude: long)))
            }
        }
        
        return res
    }
    
    private static func createPassingItems() -> [Item] {
        var res: [Item] = []
        stride(from: -20, through: 20, by: 5).forEach { lat in
            stride(from: -50, through: 0, by: 5).forEach { long in
                res.append(Item(coord: CLLocationCoordinate2D(latitude: lat, longitude: long)))
            }
        }
        
        return res
    }
}

#Preview {
    ContentView()
}
