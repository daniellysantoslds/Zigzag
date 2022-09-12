//
//  CustomCollectionViewCell.swift
//  Zigzag
//
//  Created by nmso on 12/09/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier:String = "CustomCollectionViewCell"
    
    let customView:CustomView = {
        let view = CustomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(self.customView)
        self.backgroundColor = .lightGray
        self.configConstraints()
    }
    
    required init?(coder:NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.customView.topAnchor.constraint(equalTo: self.topAnchor),
            self.customView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.customView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.customView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
