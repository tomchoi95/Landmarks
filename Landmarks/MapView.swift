//
//  MapView.swift
//  Landmarks
//
//  Created by 최범수 on 2025-01-18.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    }
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
}

#Preview {
    MapView()
}
