//
//  CurrentWeatherViewController.swift
//  Weather
//
//  Created by Алексей Попов on 07.03.2024.
//

import UIKit

final class CurrentWeatherViewController: UIViewController {
    
    @IBOutlet var currentRevengeLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    
    @IBOutlet var weekLabel: UILabel!
    @IBOutlet var mondayLabel: UILabel!
    @IBOutlet var tuesdayLabel: UILabel!
    @IBOutlet var wednesdayLabel: UILabel!
    @IBOutlet var thursdayLabel: UILabel!
    @IBOutlet var fridaуLabel: UILabel!
    @IBOutlet var saturdayLabel: UILabel!
    @IBOutlet var sundayLabel: UILabel!
    
    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        currentRevengeLabel.text = "Текущее место"
        cityLabel.text = city.title
        temperatureLabel.text = "\(city.weathers[0].weatherByHours[0].weather.temperature)  \(city.weathers[0].weatherByHours[0].weather.type.rawValue)"
        
        color()
        
        weekLabel.text = "Погода на семь дней:"
        
//        
//        let labels = [mondayLabel, tuesdayLabel, wednesdayLabel, thursdayLabel,  fridaуLabel, saturdayLabel, sundayLabel]
//
//        for cityIndex in 0..<labels.count {
//            let weatherData = city.weathers
//            
//            var cityWeatherTexts = ""
//            for weather in weatherData {
//                let day = weather.day
//                for hourWeather in weather.weatherByHours {
//                    let type = hourWeather.weather.type
//                    let temperature = hourWeather.weather.temperature
//                    let highLowTemperature = hourWeather.weather.highLowTemperature
//                    
//                    cityWeatherTexts += "\(day): \(type) \(temperature).... \(highLowTemperature)"
//                }
//            }
//            
//            labels[cityIndex]?.text = cityWeatherTexts
//        }
        
        mondayLabel.text = "\(city.weathers[1].day.rawValue):      \(city.weathers[1].weatherByHours[1].weather.type.rawValue) Ночью: \(city.weathers[1].weatherByHours[1].weather.highLowTemperature.low)....Днем: \(city.weathers[1].weatherByHours[1].weather.highLowTemperature.high)"
        
        tuesdayLabel.text = "\(city.weathers[2].day.rawValue):      \(city.weathers[2].weatherByHours[2].weather.type.rawValue) Ночью: \(city.weathers[2].weatherByHours[2].weather.highLowTemperature.low)....Днем: \(city.weathers[2].weatherByHours[2].weather.highLowTemperature.high)"

        wednesdayLabel.text = "\(city.weathers[3].day.rawValue):      \(city.weathers[3].weatherByHours[3].weather.type.rawValue) Ночью: \(city.weathers[3].weatherByHours[3].weather.highLowTemperature.low)....Днем: \(city.weathers[3].weatherByHours[3].weather.highLowTemperature.high)"

        thursdayLabel.text = "\(city.weathers[4].day.rawValue):      \(city.weathers[4].weatherByHours[4].weather.type.rawValue) Ночью: \(city.weathers[4].weatherByHours[4].weather.highLowTemperature.low)....Днем: \(city.weathers[4].weatherByHours[4].weather.highLowTemperature.high)"
        
        fridaуLabel.text = "\(city.weathers[5].day.rawValue):      \(city.weathers[5].weatherByHours[5].weather.type.rawValue) Ночью: \(city.weathers[5].weatherByHours[5].weather.highLowTemperature.low)....Днем: \(city.weathers[5].weatherByHours[5].weather.highLowTemperature.high)"
        
        saturdayLabel.text = "\(city.weathers[6].day.rawValue):      \(city.weathers[6].weatherByHours[6].weather.type.rawValue) Ночью: \(city.weathers[6].weatherByHours[6].weather.highLowTemperature.low)....Днем: \(city.weathers[6].weatherByHours[6].weather.highLowTemperature.high)"
        
        sundayLabel.text = "\(city.weathers[0].day.rawValue):      \(city.weathers[0].weatherByHours[0].weather.type.rawValue) Ночью: \(city.weathers[0].weatherByHours[0].weather.highLowTemperature.low)....Днем: \(city.weathers[0].weatherByHours[0].weather.highLowTemperature.high)"
        
    }
    func color(){
    
        switch city.weathers[0].weatherByHours[0].weather.type {
        case .sunny:
            view.backgroundColor = .systemYellow
        case .cloudy:
            view.backgroundColor = .systemGray2
        case .rainy:
            view.backgroundColor = .systemCyan
        case .windy:
            view.backgroundColor = .systemGray4
       
        }
    }
    
}
