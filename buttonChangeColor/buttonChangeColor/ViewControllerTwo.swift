//
//  ViewControllerTwo.swift
//  buttonChangeColor
//
//  Created by Linchevskii Dmitriy on 5/14/20.
//  Copyright © 2020 Linchevskii Dmitriy. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Error", message: "Ahtung", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
    }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    

}
