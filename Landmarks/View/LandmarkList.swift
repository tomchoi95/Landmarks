//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 최범수 on 2025-01-18.
//

import SwiftUI


struct LandmarkList: View {
    var body: some View {
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}


#Preview {
    LandmarkList()
}
