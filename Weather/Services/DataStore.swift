//
//  DataStore.swift
//  Weather
//
//  Created by Карина Короткая on 06.03.2024.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let cities = ["Москва", "Архангельск", "Воронеж", "Новочеркасск", "Ростов на Дону", "Уфа"]
    let lowTemperatures = -5...5
    let highTemperatures = 6...10
    let hours = 0...23
    
    private init() {}
}
