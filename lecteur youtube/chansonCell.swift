//
//  chansonCell.swift
//  lecteur youtube
//
//  Created by Letoret Hugo on 2/08/18.
//  Copyright © 2018 Letoret Hugo. All rights reserved.
//

import UIKit

class chansonCell: UITableViewCell {
    
    
    @IBOutlet weak var miniature: UIImageView!
    @IBOutlet weak var artisteEtTitreLabel: UILabel!
    
    var chanson: chanson!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func creerCell(_ chanson: chanson) {
        self.chanson = chanson
        
        let attributed = NSMutableAttributedString(string: self.chanson.titre, attributes: [.font: UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        let secondeLigne = NSAttributedString(string:"\n" + self.chanson.artiste , attributes: [.font: UIFont.italicSystemFont(ofSize: 20), .foregroundColor: UIColor.darkGray])
        attributed.append(secondeLigne)
        artisteEtTitreLabel.attributedText = attributed
    }
    
}
