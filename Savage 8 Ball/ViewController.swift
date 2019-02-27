//
//  ViewController.swift
//  Savage 8 Ball
//
//  Created by Super MattMatt on 2/25/19.
//  Copyright © 2019 Savage8Ball. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBall()
    }

    @IBAction func askBtnPressed(_ sender: Any) {
        randomBall()
    }
    
    func randomBall() {
        let randomIndex = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBall()
    }
}

