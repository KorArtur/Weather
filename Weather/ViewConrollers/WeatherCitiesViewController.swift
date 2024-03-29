//
//  ViewController.swift
//  Weather
//
//  Created by Карина Короткая on 06.03.2024.
//

import UIKit

final class WeatherCitiesViewController: UITableViewController {
    
    private let cities = City.getCities()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        tableView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "5b8f2ca8426c450474624ad87690de2c.jpg"))
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        cities.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "cityCell",
            for: indexPath
        ) as? WeatherCityCell else {
            
            return UITableViewCell()
        }
        
        let city = cities[indexPath.row]
        let firstDayWeather = city.weathers.first?.weatherByHours.first?.weather
        cell.configure(with: firstDayWeather, cityName: city.title)
        
        return cell
    }
    
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        let city = cities[indexPath.row]
        
            let currentWeatherVC = UIStoryboard(
            name: "CurrentWeather",
            bundle: .main
            ).instantiateViewController(
                withIdentifier: "CurrentWeatherViewController"
            ) as? CurrentWeatherViewController
        currentWeatherVC?.city = city
        guard let currentWeatherVC else { return }
        navigationController?.pushViewController(currentWeatherVC, animated: true)
    }
}


