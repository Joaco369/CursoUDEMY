//
//  PageViewController.swift
//  ProjectViews
//
//  Created by Joaquin Villarreal on 08/03/2024.
//

import UIKit

class PageViewController: UIPageViewController {
    // Creamos una variable privada de tipo Array que va a contener controladores que la vamos a inicializar vacia.
    private var myControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        //Creamos una constante de mi controller green = a nuestro storyBoard de nombre Main y en Bundle Nil. Luego instanciamos el controllador vcGreen
        let myGreenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcGreen")
        
        let myPinkVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcPink")
        
        //Creamos los 2 controladores que tenemos. y El array pasa a tener 2 valores.
        myControllers.append(myGreenVC)
        myControllers.append(myPinkVC)
        
        //Creamos un SetViewController que nos pide un Array de uno de los elementos (myGreenVC o myPinkVC), direccion hacia adelante, que este animado y una vez completada esa animacion no haga nada, con el Nil.
        // Esta linea muestra que pagina queremos que se vea primero.
        setViewControllers([myGreenVC], direction: .forward, animated: true, completion: nil)
        
        // escribimos dataSource porque lo que queremos es que se ejecuten las operaciones delegadas con el protocolo en nuestra misma clase
        dataSource = self
    }

}
// Dividimos nuestro codigo con la extension que extiende al Data Source
extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        //Creamos una constante para que la pagina se mueste en el primer indice
        let index = myControllers.firstIndex(of: viewController)
        
        // Si es la primera pagina retornamos el ultimo contralador, osea, el segundo. De no ser de indice 0 retornamos el primer controlador.
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
    }
    
}
