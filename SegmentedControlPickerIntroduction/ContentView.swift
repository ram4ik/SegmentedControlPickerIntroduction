//
//  ContentView.swift
//  SegmentedControlPickerIntroduction
//
//  Created by ramil on 01/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var dayNight = "day"
    @State private var tab = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Segmented control").font(.largeTitle)
            Text("Introdution").font(.title).foregroundColor(.gray)
            Text("Additional text")
            Picker("", selection: $dayNight) {
                Text("Day").tag("day")
                Text("Night").tag("night")
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text("With images:")
            Picker("", selection: $tab) {
                Image(systemName: "sun.min").tag(0)
                Image(systemName: "moon").tag(1)
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
