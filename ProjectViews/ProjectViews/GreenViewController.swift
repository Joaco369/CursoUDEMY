//
//  GreenViewController.swift
//  ProjectViews
//
//  Created by Joaquin Villarreal on 08/03/2024.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Primero ocultamos nuestro Label porque todavia no lo queremos mostrar
        myLabel.isHidden = true
        
        mySearchBar.delegate = self
    }

}

extension GreenViewController: UISearchBarDelegate {
    //Esto es lo primero que se va a hacer al hacer click en el boton de busqueda
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // Lo primero que hacemos es esconder nuestro teclado.
        mySearchBar.resignFirstResponder()
        
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
    }
}
