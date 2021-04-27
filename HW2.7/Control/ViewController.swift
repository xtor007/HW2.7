//
//  ViewController.swift
//  HW2.7
//
//  Created by Anatoliy Khramchenko on 27.04.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC:ColorVC = segue.destination as! ColorVC
        if newVC.redCount != nil {
            newVC.redCount.text = String(ColorC.red)
            newVC.greenCount.text = String(ColorC.green)
            newVC.blueCount.text = String(ColorC.blue)
            newVC.redSlider.value = ColorC.red
            newVC.greenSlider.value = ColorC.green
            newVC.blueSlider.value = ColorC.blue
        }
    }

    @IBAction func edit(_ sender: Any) {
        self.performSegue(withIdentifier: "toColor", sender: 0)
    }
}

