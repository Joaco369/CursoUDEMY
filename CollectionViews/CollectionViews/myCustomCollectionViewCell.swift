//
//  myCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Joaquin Villarreal on 14/03/2024.
//

import UIKit

class myCustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myLabel.font = UIFont.systemFont(ofSize: 15)
        myLabel.textColor = .black
    }

}
