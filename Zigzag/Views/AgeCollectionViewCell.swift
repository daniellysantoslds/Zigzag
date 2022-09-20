//
//  AgeCollectionViewCell.swift
//  Zigzag
//
//  Created by Isabela Batista on 20/09/22.
//

import UIKit

class AgeCollectionViewCell: UICollectionViewCell {
    static let identifier = "AgeCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .lightGray
    }
    
    let labelLugar4: UILabel = {
           let label = UILabel()
           label.text = "0-10 anos"
           label.setContentHuggingPriority(.defaultHigh, for: .vertical)
           label.numberOfLines = 2
           label.textAlignment = .left
           label.clipsToBounds = true
           label.textColor = UIColor(named: "Gray40")
           label.font = UIFont.boldSystemFont(ofSize: 15)
           return label
       }()
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
