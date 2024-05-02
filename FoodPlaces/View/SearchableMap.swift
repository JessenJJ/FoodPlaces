//
//  ContentView.swift
//  FoodPlaces
//
//  Created by User50 on 02/05/24.
//

import SwiftUI
import MapKit

struct SearchableMap: View {
    @State private var position = MapCameraPosition.automatic
    @State private var isSheetPresented: Bool = true

    var body: some View {
        Map(position: $position)
            .ignoresSafeArea()
            .sheet(isPresented: $isSheetPresented) {
                SheetView()
            }
    }
}
