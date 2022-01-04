//
//  ViewController.swift
//  The Light
//
//  Created by Kirill Dev on 04.01.2022.
//

import UIKit

class ViewController: UIViewController {
var isLightOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
   view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        isLightOn.toggle()
        updateUI()
    }
    
}

