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
        temperatureLabel.text = "\(city.weathers[0].weatherByHours[0].weather.temperature)°C  \(city.weathers[0].weatherByHours[0].weather.type.rawValue)"
        
        getColor()
        
        weekLabel.text = "Погода на семь дней:"
        mondayLabel.text = generateWeatherText(for: 1, hourIndex: 1)
        tuesdayLabel.text = generateWeatherText(for: 2, hourIndex: 2)
        wednesdayLabel.text = generateWeatherText(for: 3, hourIndex: 3)
        thursdayLabel.text = generateWeatherText(for: 4, hourIndex: 4)
        fridaуLabel.text = generateWeatherText(for: 5, hourIndex: 5)
        saturdayLabel.text = generateWeatherText(for: 6, hourIndex: 6)
        sundayLabel.text = generateWeatherText(for: 0, hourIndex: 0)
        
    }
    private func getColor(){
        
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
   private func generateWeatherText(for weatherIndex: Int, hourIndex: Int) -> String {
        let weatherData = city.weathers[weatherIndex]
        
        let day = weatherData.day.rawValue
        let type = weatherData.weatherByHours[hourIndex].weather.type.rawValue
        let lowTemperature = weatherData.weatherByHours[hourIndex].weather.highLowTemperature.low
        let highTemperature = weatherData.weatherByHours[hourIndex].weather.highLowTemperature.high
        
        return "\(day):    \(type) Ночью: \(lowTemperature)°C....Днем: \(highTemperature)°C"
    }
}
