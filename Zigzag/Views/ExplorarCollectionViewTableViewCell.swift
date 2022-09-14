//
//  ExplorarCollectionViewTableViewCell.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 13/09/22.
//

import UIKit

class ExplorarCollectionViewTableViewCell: UITableViewCell {
    
    static let identifier = "ExplorarCollectionViewTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //maneira correta de adicionar uma cor do proprio style guide UIColor(named: "nomedacor")
        contentView.backgroundColor = UIColor(named: "Green20")
        
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    
}
