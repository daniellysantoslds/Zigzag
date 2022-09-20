//
//  PlaceCollectionViewCell.swift
//  Zigzag
//
//  Created by Isabela Batista on 20/09/22.
//

import UIKit

class PlaceCollectionViewCell: UICollectionViewCell {
    static let identifier = "PlaceCollectionViewCell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
