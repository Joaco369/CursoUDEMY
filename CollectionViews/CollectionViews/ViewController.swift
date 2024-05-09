//
//  ViewController.swift
//  CollectionViews
//
//  Created by Joaquin Villarreal on 14/03/2024.
//

import UIKit

class ViewController: UIViewController {

    private let myCountrys = ["joako_villarreal", "tomivillarreal2", "julianvillarreal1", "muyurbano_chillar", "casatomada_bebidas", "flor_heim", "sandraaffonso", "mate_bello"]
    
    private let myCellWidth = UIScreen.main.bounds.width / 2
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "myCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
    }


}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCountrys.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as? myCustomCollectionViewCell
        
        cell!.myLabel.text = myCountrys[indexPath.row]
        
        return cell!
    }
    
    
}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row) \(myCountrys[indexPath.row])")
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: myCellWidth, height: myCellWidth)
    }
}
