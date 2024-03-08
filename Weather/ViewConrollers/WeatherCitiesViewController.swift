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
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath)
        
        
        return cell
    }
}


