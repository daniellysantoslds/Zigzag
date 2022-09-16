//
//  TypeCollectionViewCell.swift
//  Zigzag
//
//  Created by Isabela Batista on 16/09/22.
//

import UIKit

class TypeCollectionViewCell: UICollectionViewCell {
    static let identifier = "TypeCollectionViewCell"
    
    private let imageview: UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        return imageview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageview)
        
        let images = [
        UIImage(named: "Hospedar-icon"),
        UIImage(named: "Lazer-icon"),
        UIImage(named: "Comer-icon"),
        ].compactMap({ $0 })
        imageview.image = images.randomElement()//COMO EU TIRO O RANDOM MDS DO CEU?
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageview.frame = contentView.bounds
        self.backgroundColor = .green
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageview.image = nil
    }
}
