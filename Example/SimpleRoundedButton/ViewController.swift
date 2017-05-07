//
//  ViewController.swift
//  MCCustomButton
//
//  Created by MasterCarl on 05/06/2017.
//  Copyright (c) 2017 MasterCarl. All rights reserved.
//

import UIKit
import SimpleRoundedButton


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var animatingButton: SimpleRoundedButton!
    
    @IBAction func didSelectAnimatingButton(_ sender: Any) {
        animatingButton.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            self.animatingButton.stopAnimating()
        })
    }
}

