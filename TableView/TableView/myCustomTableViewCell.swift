//
//  myCustomTableViewCell.swift
//  TableView
//
//  Created by Joaquin Villarreal on 13/03/2024.
//

import UIKit

class myCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myFirstLabel.textColor = .blue
        myFirstLabel.font = .systemFont(ofSize: 20)
        
        mySecondLabel.numberOfLines = 0
        
        backgroundColor = .gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(myFirstLabel.text ?? "")
    }
    
}
