//
//  MockWeatherService.swift
//  WeatherAppTests
//
//  Created by Muhammad Qureshi on 10/03/2024.
//

import XCTest
@testable import WeatherApp

class MockWeatherService: WeatherService {
    var mockWeatherResponse: WeatherResponse?
    var mockError: Error?
    
    func fetchWeather(for city: String, completion: @escaping (Result<WeatherResponse, Error>) -> Void) {
        if let error = mockError {
            completion(.failure(error))
        } else if let weather = mockWeatherResponse {
            completion(.success(weather))
        }
    }
    
    func fetchWeather(forLatitude lat: Double, longitude lon: Double, completion: @escaping (Result<WeatherResponse, Error>) -> Void) {
        if let error = mockError {
            completion(.failure(error))
        } else if let weather = mockWeatherResponse {
            completion(.success(weather))
        }
    }
}
