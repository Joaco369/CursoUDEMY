//
//  CreateConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Joaquin Villarreal on 18/03/2024.
//

import UIKit

class CreateConstraintsViewController: UIViewController {
    @IBOutlet weak var yellowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Constraints de tamaño con codigo.
        
        yellowView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        yellowView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        //Constraints de posicion con codigo.
        //...Importante esta linea!
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraint(NSLayoutConstraint(item: yellowView!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
        
        yellowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
    }


}
