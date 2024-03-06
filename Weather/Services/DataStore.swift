//
//  DataStore.swift
//  Weather
//
//  Created by Карина Короткая on 06.03.2024.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let cities = ["Москва", "Архангельск", "Воронеж", "Новочеркасск"]
    let lowTemperatures = -25...10
    let highTemperatures = -15...40
    let hours = 0...23
    
    private init() {}
}
