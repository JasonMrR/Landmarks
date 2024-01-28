//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Jason Morales Rodriguez on 27/01/24.
//

import SwiftUI

struct LandmarkRow : View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "heart.fill")
                    .font(.title2)
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview{
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
