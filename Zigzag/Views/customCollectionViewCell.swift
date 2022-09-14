//
//  CollectionViewCell.swift
//  Zigzag
//
//  Created by Isabela Batista on 14/09/22.
//

import UIKit

class customCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CustomCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.backgroundColor = .green
        return imageView
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "mds do ceu"
        label.backgroundColor = .systemYellow
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
        //contentView.backgroundColor = .systemPink
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myLabel.frame = CGRect(x: 5,
                               y: contentView.frame.size.height-50,
                               width: contentView.frame.size.width-10,
                               height: 50)
        
        myImageView.frame = CGRect(x: 5,
                               y: 0,
                               width: contentView.frame.size.width-10,
                               height: contentView.frame.size.height-50)
    }
    
    private func setupUI(){
        self.backgroundColor = .yellow
    }
    

}
