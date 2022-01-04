//
//  ViewController.swift
//  The Light
//
//  Created by Kirill Dev on 04.01.2022.
//

import UIKit

class ViewController: UIViewController {
var isLightOn = false
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
   view.backgroundColor = isLightOn ? .black : .white
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        isLightOn.toggle()
        updateUI()
    }
    
}

