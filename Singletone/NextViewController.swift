//
//  NextViewController.swift
//  Singletone
//
//  Created by shoeb on 08/02/23.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var countNBTN: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
        
    }
    @IBAction func plusNBTN(_ sender: Any) {
        Cart.shared.noItem = Cart.shared.noItem + 1
        updateLabel()
    }
    @IBAction func minusNBTN(_ sender: Any) {
        Cart.shared.noItem = Cart.shared.noItem - 1
        updateLabel()
    }
    
    func updateLabel(){
        let noOfItem = Cart.shared.noItem
        countNBTN.text = String(noOfItem)
    }
    
}
