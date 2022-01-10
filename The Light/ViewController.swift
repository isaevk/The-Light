//
//  ViewController.swift
//  The Light
//
//  Created by Kirill Dev on 04.01.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var isLightOn = 0
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    // MARK: - Methods
    
    // Function that changes the color of the display by tap
    fileprivate func updateUI() {
        switch isLightOn {
        case 0:
            view.backgroundColor = .white
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .green
        default:
            view.backgroundColor = .red
        }
        isLightOn += 1
        
        
    }
    // Function including a flashlight by tap
    func toggleFlash(on: Bool) {
        guard let device = AVCaptureDevice.default(for: .video) else { return }
        
        if device.hasTorch {
            do {
                try device.lockForConfiguration()
                
                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }
                
                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        toggleFlash(on: true)
        updateUI()
    }
    
}

