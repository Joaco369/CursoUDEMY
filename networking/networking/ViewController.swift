//
//  ViewController.swift
//  networking
//
//  Created by Joaquin Villarreal on 25/03/2024.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var downloadImageButton: UIButton!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = ""
        emailLabel.text = ""
        idLabel.text = ""
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
    }

    
    @IBAction func getUserAction(_ sender: Any) {
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.getUser(id: 2139331) { result in
            switch result {
            case .success(let user):
                self.activityIndicator.stopAnimating()
                
                self.setup(user: user)
            case .failure(let error):
                self.activityIndicator.stopAnimating()
                
                self.nameLabel.text = error.localizedDescription
            }
        }

    }
    @IBAction func addUserAction(_ sender: Any) {
        
        let newUser = NewUser(name: "Joaco", email: "Joacovilla@gmail.com", gender: "Male", status: "Active")
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.addUser(user: newUser) { user in
            
            self.activityIndicator.stopAnimating()
            
            self.setup(user: user)
            
        } failure: { error in
            
            self.activityIndicator.stopAnimating()
            
            self.nameLabel.text = error.debugDescription
            
        }

    }
    @IBAction func updateUserAction(_ sender: Any) {
        
        let newUser = NewUser(name: "Joaco 2", email: nil, gender: nil, status: nil)
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.updateUser(id: 2139331, user: newUser) { user in
            
            self.activityIndicator.stopAnimating()
            
            self.setup(user: user)
            
        } failure: { error in
            
            self.activityIndicator.stopAnimating()
            
            self.nameLabel.text = error.debugDescription
            
        }
        
    }
    
    private func setup(user: User) {
        
        self.nameLabel.text = user.name
        self.emailLabel.text = user.email
        self.idLabel.text = user.id?.description
        
    }
    @IBAction func deleteUserAction(_ sender: Any) {
        
        activityIndicator.startAnimating()
        
        let id = 2139331
        
        NetworkingProvider.shared.deleteUser(id: id) {
            
            self.activityIndicator.stopAnimating()
            
            self.nameLabel.text = "Se ha borrado el usuario con ID: \(id)"
            self.emailLabel.text = ""
            self.idLabel.text = ""
            
        } failure: { error in
            
            self.activityIndicator.stopAnimating()
            
            self.nameLabel.text = error.debugDescription
            
        }

    }
    @IBAction func downloadButtonAction(_ sender: Any) {
        
        downloadImageButton.isHidden = true
        logoImageView.kf.setImage(with: URL(string: "https://i0.wp.com/sitecloudy.com/wp-content/uploads/2023/07/Que-es-Swift-y-cuales-son-sus-ventajas-y-desventajas-1-e1690584338834.png?resize=488%2C504&ssl=1"))
    }
}

