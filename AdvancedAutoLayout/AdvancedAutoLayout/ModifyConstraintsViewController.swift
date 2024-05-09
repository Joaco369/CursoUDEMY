//
//  ModifyConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Joaquin Villarreal on 18/03/2024.
//

import UIKit

class ModifyConstraintsViewController: UIViewController {
    @IBOutlet weak var heightConstraints: NSLayoutConstraint!
    @IBOutlet weak var topConstraints: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        heightConstraints.constant = 300
        
        topConstraints.constant = 64
    }

}
