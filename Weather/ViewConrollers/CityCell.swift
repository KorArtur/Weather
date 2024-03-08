//
//  CityCell.swift
//  Weather
//
//  Created by Карина Короткая on 07.03.2024.
//

import UIKit

final class WeatherCityCell: UITableViewCell {

    @IBOutlet private var cityLabel: UILabel!
    @IBOutlet private var conditionLabel: UILabel!
    @IBOutlet private var temperatureLabel: UILabel!
    @IBOutlet private var maxTempLabel: UILabel!
    @IBOutlet private var minTempLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.backgroundColor = .gray
        contentView.layer.cornerRadius = 10
        
        let margins = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
              contentView.frame = contentView.frame.inset(by: margins)
    }
    
    func configure(with weather: Weather?, cityName: String) {
        guard let weather else { return }
        
        cityLabel.text = cityName
        conditionLabel.text = weather.type.rawValue
        temperatureLabel.text = "\(weather.temperature)°C"
        maxTempLabel.text = "\(weather.highLowTemperature.high)°C"
        minTempLabel.text = "\(weather.highLowTemperature.low)°C"
    }
}
