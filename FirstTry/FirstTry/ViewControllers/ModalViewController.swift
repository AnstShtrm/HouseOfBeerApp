//
//  ModalViewController.swift
//  FirstTry
//
//  Created by Nastya Shturma on 21/06/2023.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tgEmail(_ sender: UIButton) {
        guard let url = URL(string: "https://t.me/Nstshturm")
        else {
            return
        }
        UIApplication.shared.open(url)
    }
    
}
