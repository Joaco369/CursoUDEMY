//
//  ViewController.swift
//  TableView
//
//  Created by Joaquin Villarreal on 13/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // Esto es lo que pintamos en nuestra tabla.
    private let myCountrys = ["España", "Argentina", "Mexico", "Colombia", "Chile", "EEUU", "Francia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Data Source nos sirve para indicar que elementos va a tener la tabla
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "myCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "myCustomCell")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Celdas Simples"
        }
        
        return "Celdas Custom"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        if section == 0 {
            return "Footer Celdas Simples"
        }
        
        return "Footer Celdas Custom"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountrys.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            
            return 50
        }
        
        return UITableView.automaticDimension
        
    }
    // Se debe retornar una celda
    // Entramos en la recuperacion de Celda.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
        
        //Intentamos recuperar la celda.
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
            
            // En caso de que cell no exista se crea una celda con identificacion myCell.
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "myCell")
                
                // Añadimos estilo a nuestra celda.
                cell?.backgroundColor = .gray
                cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
                cell?.accessoryType = .disclosureIndicator
            }
            cell!.textLabel?.text = myCountrys[indexPath.row]
            return cell!
        }
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as? myCustomTableViewCell
            
            cell?.myFirstLabel.text = String(indexPath.row + 1)
            cell?.mySecondLabel.text = myCountrys[indexPath.row]
            
        if indexPath.row == 2{
            cell!.mySecondLabel.text = "Holaaa estoy jubilado a mis 30 Añoss!  jejejjejejejejje"
        }
        
            return cell!
    }
}

extension ViewController: UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
