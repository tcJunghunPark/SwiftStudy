//
//  FrameworkCell.swift
//  AppleFramework
//
//  Created by Junghun Park on 2022/08/31.
//

import UIKit

class FrameworkCell: UICollectionViewCell {
    @IBOutlet var thumbnailImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.numberOfLines = 1
        nameLabel.adjustsFontSizeToFitWidth = true
        
     
    }
    
    func configure(_ framework: AppleFramework) {
        thumbnailImageView.image = UIImage(named: framework.imageName)
        nameLabel.text = framework.name
    }
}
