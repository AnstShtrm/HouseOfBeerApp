//
//  ViewController.swift
//  FirstTry
//
//  Created by Nastya Shturma on 18/06/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var namesOfBear: [UILabel]!
    
    @IBOutlet var beerVolumes: [UILabel]!
    
    @IBOutlet var bearButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "House of Beer"
    }
    @IBAction func goToDetails(sender: UIButton) {
            
            guard let destinationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutBeer") as? AboutBeerViewController else {return}
            
            let beerIndex = sender.tag
            destinationController.beerIndex = beerIndex
            navigationController?.pushViewController(destinationController, animated: true)
        }
}
