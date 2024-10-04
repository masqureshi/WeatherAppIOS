//
//  AppCoordinator.swift
//  WeatherApp
//
//  Created by Muhammad Qureshi on 10/03/2024.
//

import SwiftUI

class AppCoordinator: ObservableObject {
    @Published var currentView: WeatherView
    
    init() {
        let networkManager = NetworkManager()
        let weatherVM = WeatherViewModel(weatherService: networkManager)
        self.currentView = WeatherView(viewModel: weatherVM)
    }
    
    func start() -> some View {
        return currentView
    }
}
