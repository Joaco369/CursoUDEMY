//
//  ViewController.swift
//  myFirstApp
//
//  Created by Joaquin Villarreal on 21/03/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    private let kMyKey = "MY_KEY"
    
    // MARK: - Life Cycle
    
    // 1
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.text = NSLocalizedString("hello", comment: "")
        welcomeLabel.text = NSLocalizedString("welcome", comment: "")
    }
    
    // 2
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // 3
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    // 4
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // 5
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    // MARK: - UserDefaults
    
    // Recuperamos las preferencias
    @IBAction func getButtonAction(_ sender: Any) {
        
        if let value = UserDefaults.standard.string(forKey: kMyKey) {
            showAlert(message: value)
        } else {
            showAlert(message: "No hay un valor para esta clave")
        }
    }
    
    // Guarda las preferencias
    @IBAction func putButtonAction(_ sender: Any) {
        
        UserDefaults.standard.set("HOLAA", forKey: kMyKey)
        UserDefaults.standard.synchronize() // Forzamos el guardado de este nuevo valor
        
        showAlert(message: "Hemos guardado un valor")
    }
    
    // Borra las preferencias
    @IBAction func deleteButtonAction(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: kMyKey)
        UserDefaults.standard.synchronize() // Forzamos a que borre la preferencia.
        
        showAlert(message: "Hemos borrado un valor")
    }
    
    private func showAlert(message: String) {
        
        let alert = UIAlertController(title: "My userDefaults", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
}

