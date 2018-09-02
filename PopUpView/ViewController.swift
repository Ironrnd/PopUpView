//
//  ViewController.swift
//  PopUpView
//
//  Created by Andrew Belozerov on 02.09.2018.
//  Copyright © 2018 Andrew Belozerov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showPopUp(_ sender: UIButton) {
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUpVCid") as! PopUpViewController // 1
        
        self.addChildViewController(popUpVC) // 2
        popUpVC.view.frame = self.view.frame  // 3
        self.view.addSubview(popUpVC.view) // 4
        
        popUpVC.didMove(toParentViewController: self) // 5
    }
}

