//
//  ContentView.swift
//  WeatherApp
//
//  Created by Muhammad Qureshi on 10/03/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var coordinator = AppCoordinator()
    
    var body: some View {
        coordinator.start()
    }
}

#Preview {
    ContentView()
}
