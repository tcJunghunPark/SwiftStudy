//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by Junghun Park on 2022/08/29.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var weatherImageView: UIImageView!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        changeButton.tintColor = UIColor.white
        reload()
    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        reload()
        
    }
    
    func reload(){
        cityLabel.text = cities.randomElement()
        
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
    }
    
}
