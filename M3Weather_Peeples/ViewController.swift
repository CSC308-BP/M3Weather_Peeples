//
//  ViewController.swift
//  M3Weather_Peeples
//
//  Created by Brayden Peeples on 2/5/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var weatherText: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var tempWarning: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let weather = "Snowy"
        let temperature = 19.5
        
        /*
        if weather == "Sunny" {
            weatherIcon.image = UIImage(named: "Sunny")
            weatherText.text = "Sunny"
            self.temperature.text = "\(temperature)°F"
        }
        else if weather == "Cloudy" {
            weatherIcon.image = UIImage(named: "Cloudy")
            weatherText.text = "Cloudy"
            self.temperature.text = "\(temperature)°F"
        }
        else if weather == "Rainy" {
            weatherIcon.image = UIImage(named: "Rainy")
            weatherText.text = "Rainy"
            self.temperature.text = "\(temperature)°F"
        }
        else if weather == "Snowy" {
            weatherIcon.image = UIImage(named: "Snowy")
            weatherText.text = "Snowy"
            self.temperature.text = "\(temperature)°F"
        }
        else {
            weatherIcon.image = UIImage(named: "Unknown")
            weatherText.text = "Unknown"
            self.temperature.text = "\(temperature)°F"
        }
        */
        
        switch weather {
            case "Sunny":
                weatherIcon.image = UIImage(named: "Sunny")
                weatherText.text = "Sunny"
            case "Cloudy":
                weatherIcon.image = UIImage(named: "Cloudy")
                weatherText.text = "Cloudy"
            case "Rainy":
                weatherIcon.image = UIImage(named: "Rainy")
                weatherText.text = "Rainy"
            case "Snowy":
                weatherIcon.image = UIImage(named: "Snowy")
                weatherText.text = "Snowy"
            default:
                weatherIcon.image = UIImage(named: "Unknown")
                weatherText.text = "Unknown"
                break
        }
        
        self.temperature.text = "\(temperature)°F"
        
        switch temperature {
        case ..<20:
            tempWarning.text = "Extreme cold!"
        case 20..<50:
            tempWarning.text = "It's cold outside!"
        case 50..<69:
            tempWarning.text = "Cool and mild!"
        case 69..<86:
            tempWarning.text = "Warm!"
        case 86...:
            tempWarning.text = "Heat alert!"
        default:
            tempWarning.text = "Temperature unknown"
            break
        }
        
    }


}

