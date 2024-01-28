//
//  ContentView.swift
//  Landmarks
//
//  Created by Jason Morales Rodriguez on 27/01/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
