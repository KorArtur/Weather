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
    
    var cities: [City]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentRevengeLabel.text = "Текущее место"
        cityLabel.text = cities[0].title
        temperatureLabel.text = """
        \(cities[0].weathers[0].weatherByHours[0].weather.temperature)  
        \(cities[0].weathers[0].weatherByHours[0].weather.type)
        """
        
        weekLabel.text = "Погода на семь дней"
        
        
        let labels = [mondayLabel, tuesdayLabel, wednesdayLabel, thursdayLabel,  fridaуLabel, saturdayLabel, sundayLabel]

        for cityIndex in 0..<cities.count {
            let weatherData = cities[cityIndex].weathers
            
            var cityWeatherTexts = ""
            for weather in weatherData {
                let day = weather.day
                for hourWeather in weather.weatherByHours {
                    let type = hourWeather.weather.type
                    let temperature = hourWeather.weather.temperature
                    let highLowTemperature = hourWeather.weather.highLowTemperature
                    
                    cityWeatherTexts += "\(day): \(type) \(temperature).... \(highLowTemperature)"
                }
            }
            
            labels[cityIndex]?.text = cityWeatherTexts
        }
        
//        mondayLabel.text = """
//        \(cities[1].weathers[1].day)
//        \(cities[1].weathers[1].weatherByHours[1].weather.type)
//        \(cities[1].weathers[1].weatherByHours[1].weather.temperature)....
//        \(cities[1].weathers[1].weatherByHours[1].weather.highLowTemperature)
//        """
//        
//        tuesdayLabel.text = """
//        \(cities[2].weathers[2].day)
//        \(cities[2].weathers[2].weatherByHours[2].weather.type)
//        \(cities[2].weathers[2].weatherByHours[2].weather.temperature)....
//        \(cities[2].weathers[2].weatherByHours[2].weather.highLowTemperature)
//        """
//        
//        wednesdayLabel.text = """
//        \(cities[3].weathers[3].day)
//        \(cities[3].weathers[3].weatherByHours[3].weather.type)
//        \(cities[3].weathers[3].weatherByHours[3].weather.temperature)....
//        \(cities[3].weathers[3].weatherByHours[3].weather.highLowTemperature)
//        """
//        
//        thursdayLabel.text = """
//        \(cities[4].weathers[4].day)
//        \(cities[4].weathers[4].weatherByHours[4].weather.type)
//        \(cities[4].weathers[4].weatherByHours[4].weather.temperature)....
//        \(cities[4].weathers[4].weatherByHours[4].weather.highLowTemperature)
//        """
//        
//        fridaуLabel.text = """
//        \(cities[5].weathers[5].day)
//        \(cities[5].weathers[5].weatherByHours[5].weather.type)
//        \(cities[5].weathers[5].weatherByHours[5].weather.temperature)....
//        \(cities[5].weathers[5].weatherByHours[5].weather.highLowTemperature)
//        """
//        
//        saturdayLabel.text = """
//        \(cities[6].weathers[6].day)
//        \(cities[6].weathers[6].weatherByHours[6].weather.type)
//        \(cities[6].weathers[6].weatherByHours[6].weather.temperature)....
//        \(cities[6].weathers[6].weatherByHours[6].weather.highLowTemperature)
//        """
//        
//        sundayLabel.text = """
//        \(cities[7].weathers[7].day)
//        \(cities[7].weathers[7].weatherByHours[7].weather.type)
//        \(cities[7].weathers[7].weatherByHours[7].weather.temperature)....
//        \(cities[7].weathers[7].weatherByHours[7].weather.highLowTemperature)
//        """
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
