//
//  CityCell.swift
//  Weather
//
//  Created by Карина Короткая on 07.03.2024.
//

import UIKit

class WeatherCityCell: UITableViewCell {
    
    @IBOutlet private var cityLabel: UILabel!
    @IBOutlet private var conditionLabel: UILabel!
    @IBOutlet private var temperatureLabel: UILabel!
    @IBOutlet private var maxTempLabel: UILabel!
    @IBOutlet private var minTempLabel: UILabel!
    
    func configure(with weather: Weather, cityName: City ) {
        
        cityLabel.text = cityName.title
        conditionLabel.text = weather.type.rawValue
        temperatureLabel.text = "\(String(describing: weather.temperature))°C"
        maxTempLabel.text = "\(String(describing: weather.highLowTemperature.high))°C"
        minTempLabel.text = "\(String(describing: weather.highLowTemperature.low))°C"
    }
}
