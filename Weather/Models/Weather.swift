//
//  Weather.swift
//  Weather
//
//  Created by Карина Короткая on 06.03.2024.
//

import Foundation


struct City {
    let title: String
    let weather: WeatherByDate
}

struct WeatherByDate {
    let date: CurrentDate
    let weather: Weather
}

struct CurrentDate {
    let day: Days
    let hour: Int
}

struct Weather {
    let description: String
    let temperature: Int
    let highLowTemperature: HighLowTemperature
    let type: WeatherType
}

struct HighLowTemperature {
    let high: Double
    let low: Double
}

enum Days: String, CaseIterable {
    case sunday = "Вс"
    case monday = "Пн"
    case tuesday = "Вт"
    case wednesday = "Ср"
    case thursday = "Чт"
    case fridaу = "Пт"
    case saturday = "Сб"
}

enum WeatherType: String, CaseIterable {
    case sunny = "Солнечно"
    case cloudy = "Пасмурно"
    case rainy = "Дождь"
    case windy = "Ветренно"
}
