//
//  AuthViewController.swift
//  FireBaseTutorial
//
//  Created by Joaquin Villarreal on 30/03/2024.
//

import UIKit
import FirebaseAnalytics
import FirebaseCore
import FirebaseAuth
import GoogleSignIn
import FacebookLogin

class AuthViewController: UIViewController {
    
    let viewModel = AuthViewModel()
    
    @IBOutlet weak var authStackView: UIStackView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var singUpButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var googleButton: GIDSignInButton!
    @IBOutlet weak var facebookButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Autenticacion"
        // Analitics Event
        Analytics.logEvent("Init Screen", parameters: ["message":"Integracion de FireBase completa"])
        
        // Comprobar la sesion del usuario autenticado
        let defaults = UserDefaults.standard
        if let email = defaults.value(forKey: "email") as? String,
           let provider = defaults.value(forKey: "provider") as? String {
            
            authStackView.isHidden = true
            
            navigationController?.pushViewController(HomeViewController(email: email, provider: ProviderType.init(rawValue: provider)!), animated: false)
        }
    }
    
    @IBAction func singUpButtonAction(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            viewModel.getCredentials(email: email, password: password) { result in
                switch result {
                case .success(let result):
                    self.navigationController?
                        .pushViewController(HomeViewController(email: result?.user.email ?? "", provider: .basic), animated: true)
                case .failure:
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error registrando al usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true)

                }
            }
        }
        
    }
    
    @IBAction func logInButtonAction(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {

            viewModel.singIn(email: email, password: password) { result in
                switch result {
                case .success(let result):
                    self.navigationController?
                        .pushViewController(HomeViewController(email: result?.user.email ?? "", provider: .basic), animated: true)
                case .failure:
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error accediendo al usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true)
                }
            }
        }
    }
    @IBAction func facebookButtonAction(_ sender: UIButton) {
        
        
        }
    }
    
    @IBAction func googleButtonAction(_ sender: GIDSignInButton) {
        
        GIDSignIn.sharedInstance.signOut()
        
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { result, error in
            if let error {
                print("Something goes wrong \(error)")
            }
            
            if let user = result?.user, let idToken = user.idToken?.tokenString {
                
                
                let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                               accessToken: user.accessToken.tokenString)

                
                Auth.auth().signIn(with: credential) { (result, error) in
                    
                    if let error = error {
                        print("Error autenticando con FireBase: \(error.localizedDescription)")
                        
                        return
                    }
                    
                // Navega a HomeViewController aquí después de la autenticación exitosa con Firebase.
                    guard let email = result?.user.email else {
                        print("El usuario no tiene un correo electrónico asociado.")
                        return
                }
                    self.navigationController?.pushViewController(HomeViewController(email: email, provider: .google), animated: true)
                }
            }
        }
    }
}


