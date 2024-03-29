//
//  CityCell.swift
//  Weather
//
//  Created by Карина Короткая on 07.03.2024.
//

import UIKit

final class WeatherCityCell: UITableViewCell {
    
    @IBOutlet private var weatherImageView: UIImageView!
    @IBOutlet private var cityLabel: UILabel!
    @IBOutlet private var conditionLabel: UILabel!
    @IBOutlet private var temperatureLabel: UILabel!
    @IBOutlet private var maxTempLabel: UILabel!
    @IBOutlet private var minTempLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = 15
        backgroundColor = .clear
        
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
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = contentView.bounds
        
        switch weather.type {
        case .sunny:
            weatherImageView.image = UIImage(systemName: "sun.max.fill")
            gradientLayer.colors = [
                UIColor.systemYellow.cgColor,
                UIColor.systemOrange.cgColor
            ]
        case .cloudy:
            weatherImageView.image = UIImage(systemName: "cloud.fill")
            gradientLayer.colors = [
                UIColor.systemGray.cgColor,
                UIColor.darkGray.cgColor
            ]
        case .rainy:
            weatherImageView.image = UIImage(systemName: "cloud.rain")
            gradientLayer.colors = [
                UIColor.systemBlue.cgColor,
                UIColor.systemCyan.cgColor
            ]
        case .windy:
            weatherImageView.image = UIImage(systemName: "wind")
            gradientLayer.colors = [
                UIColor.white.cgColor,
                UIColor.gray.cgColor
            ]
        }
        
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}

