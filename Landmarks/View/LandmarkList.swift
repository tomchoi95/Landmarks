//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 최범수 on 2025-01-18.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = false
    var filteredLandmarks: [Landmark] {
        landmarks.filter { Landmark in
            (!showFavoriteOnly || Landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List() {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.easeInOut, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    LandmarkList()
}
