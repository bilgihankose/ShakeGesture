//
//  ViewController.swift
//  ShakeGesture
//
//  Created by Bilgihan Köse on 31.05.2020.
//  Copyright © 2020 Bilgihan Kose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()
    let restartButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView(){
        
        view.addSubview(label)
        view.addSubview(restartButton)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        restartButton.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.text = "Shake it up sekerim!"
        
        restartButton.topAnchor.constraint(equalTo: label.topAnchor, constant: 20).isActive = true
        restartButton.centerXAnchor.constraint(equalTo: label.centerXAnchor).isActive = true
        restartButton.setTitle("Restart", for: .normal)
        restartButton.addTarget(self, action: #selector(butonPressed), for: .touchUpInside)
    }
    
    @objc func butonPressed(){
        label.text = "Shake it up sekerim!"
    }
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype,
                              with event: UIEvent?) {
        label.text = "Please stop!"
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            label.text = "Shaken, not stirred"
        }
    }
    
}

