//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by Junghun Park on 2022/08/30.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    @IBOutlet var rankLabel: UILabel!
    @IBOutlet var companyIconImageView: UIImageView!
    @IBOutlet var companyNameLabel: UILabel!
    @IBOutlet var companyPriceLabel: UILabel!
    @IBOutlet var diffLabel: UILabel!
    @IBOutlet var likeImage: UIImageView!
    
    
    func configure(_ stock: StockModel){
        rankLabel.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        companyPriceLabel.text = "\(convertToCurrencyFormat(price: stock.price))원"
        
        diffLabel.textColor = stock.diff > 0 ? UIColor.systemRed : UIColor.systemBlue
        diffLabel.text = "\(stock.diff)%"
//        if stock.diff < 0 {
//            diffLabel.textColor = UIColor.systemBlue
//        }
    }
    
    func convertToCurrencyFormat(price:Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        let result = numberFormatter.string(from: NSNumber(value: price))!
        return result
    }
}
