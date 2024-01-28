//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jason Morales Rodriguez on 27/01/24.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    var landmark: Landmark


    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 200)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            ScrollView{
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)


                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)


                    Divider()


                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
            }
        }
        .navigationTitle(landmark.name)
    }
}


#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
