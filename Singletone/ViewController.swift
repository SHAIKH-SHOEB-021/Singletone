//
//  ViewController.swift
//  Singletone
//
//  Created by shoeb on 08/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabel()
    }

    @IBAction func plusBTN(_ sender: Any) {
        Cart.shared.noItem = Cart.shared.noItem + 1
        updateLabel()
    }
    @IBAction func minusBTN(_ sender: Any) {
        Cart.shared.noItem = Cart.shared.noItem - 1
        updateLabel()
    }
    @IBAction func nextBTN(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func updateLabel(){
        let noOfItem = Cart.shared.noItem
        countLBL.text = String(noOfItem)
    }
    
}

