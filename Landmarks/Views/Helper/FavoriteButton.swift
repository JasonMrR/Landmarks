//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Jason Morales Rodriguez on 28/01/24.
//

import SwiftUI

struct FavoriteButton: View {
    
    @State var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label : {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
        }
    }
}

#Preview {
    FavoriteButton(isSet: false)
}
