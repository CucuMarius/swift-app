//
//  ViewController.swift
//  Swift App
//
//  Created by Marius Adrian Cucu on 08/07/2017.
//  Copyright © 2017 Marius Adrian Cucu. All rights reserved..
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        theLabel.textColor = UIColor.blue
        theLabel.text = "Steaua Bucuresti!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var theLabel: UILabel!
    
    var pushButtonTapCount = 0

    @IBAction func backButton(_ sender: Any) {
        theLabel.textColor = UIColor.green
        theLabel.text = "Steaua Bucuresti!"
        print("Butonul de BACK a fost apasat!")
        
    }
    @IBAction func pushButton(_ sender: Any) {
        theLabel.textColor = UIColor.red
        theLabel.text = "Felicitari!"
        print("Butonul de CLICK a fost apasat!")
        
        pushButtonTapCount = pushButtonTapCount + 1
        if pushButtonTapCount > 20 {
            theLabel.text = "You pushed the button more than 20 times!!!"
        } else {
             print("You pushed the button for:", pushButtonTapCount, "times")
        }
    }
    
    
    @IBAction func aboutButton(_ sender: Any) {
        theLabel.textColor=UIColor.magenta
        theLabel.text="Buttons are cool!"
        print("Butonul ABOUT a fost apasat!")
    }
}

