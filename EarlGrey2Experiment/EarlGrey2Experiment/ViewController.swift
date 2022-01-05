//
//  ViewController.swift
//  EarlGrey2Experiment
//
//  Created by Adil Hussain on 05/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCountLabel()
    }
    
    @IBAction func onIncrementCountButtonTapped(_ sender: Any) {
        count += 1
        updateCountLabel()
    }
    
    private func updateCountLabel() {
        countLabel.text = "\(count)"
    }
}
