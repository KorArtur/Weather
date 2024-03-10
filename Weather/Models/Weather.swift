//
//  Weather.swift
//  Weather
//
//  Created by Карина Короткая on 06.03.2024.
//

import Foundation


struct City {
    let title: String
    let weathers: [WeatherByDay]
}

extension City {
    static func getCities() -> [City] {
        let cities = DataStore.shared.cities
        var result: [City] = []
        
        cities.forEach { city in
            var weatherForWeek: [WeatherByDay] = []
            
            Days.allCases.forEach { day in
                var weatherForHours: [WeatherByHour] = []
                
                DataStore.shared.hours.forEach { hour in
                    let randomTemperature = Int.random(in: DataStore.shared.lowTemperatures)
                    let randomHighTemperature = Int.random(in: DataStore.shared.highTemperatures)
                    let randomWeatherType = WeatherType.allCases.randomElement() ?? .cloudy
                    let randomWeatherDescription = "\(randomWeatherType.rawValue), \(randomTemperature)°C"
                    
                    let weather = Weather(
                        description: randomWeatherDescription,
                        temperature: randomTemperature,
                        highLowTemperature: HighLowTemperature(
                            high: Double(randomHighTemperature),
                            low: Double(randomTemperature)
                        ),
                        type: randomWeatherType
                    )
                    
                    let weatherByHour = WeatherByHour(hour: hour, weather: weather)
                    weatherForHours.append(weatherByHour)
                }
                
                let weatherByDay = WeatherByDay(day: day, weatherByHours: weatherForHours)
                weatherForWeek.append(weatherByDay)
            }
            
            let cityWithWeather = City(title: city, weathers: weatherForWeek)
            result.append(cityWithWeather)
        }
        
        return result
    }
}

struct WeatherByDay {
    let day: Days
    let weatherByHours: [WeatherByHour]
}

struct WeatherByHour {
    let hour: Int
    let weather: Weather
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
