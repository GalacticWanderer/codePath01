//
//  ViewController.swift
//  Codepath-exercise-1
//  first
//
//  Created by Joy Paul on 2/8/19.
//  Copyright © 2019 Joy Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setText(text: "Whatttt up!")
    }

    //func to display a cutom text
    //threw in an actionSheet alert for no reason @_@
    func setText(text: String){
        textLabel.text = "\(text)"
        
        //create an UIAlert
        let alert = UIAlertController(title: "\(text)", message: "I'm an alert", preferredStyle: UIAlertController.Style.actionSheet)
        
        //Add action to the alert
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        //present the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    //func for the button
    @IBAction func changeTextButton(_ sender: UIButton) {
        setText(text: "Helloooooooo")
    }
}

