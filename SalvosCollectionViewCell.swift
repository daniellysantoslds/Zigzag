//
//  SalvosCollectionViewCell.swift
//  Zigzag
//
//  Created by nmso on 16/09/22.
//

import UIKit

class SalvosCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SalvosCollectionViewCell"
    
    //configs imagem
    private let imageItem: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "imagem")
        imageView.backgroundColor = .yellow
        
        return imageView
    }()
    
    //configs titulo
    private let tituloItem: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.backgroundColor = .green
        
        return label
    }()
    
    //configs tag de idade
    private let tagChildrensAge: UILabel = {
        let label = UILabel()
        label.text = "0 - 2 anos"
        label.backgroundColor = .blue
        
        return label
    }()
    
    //chamar os elementos
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemRed
        contentView.addSubview(tituloItem)
        contentView.addSubview(tagChildrensAge)
        contentView.addSubview(imageItem)

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //posicionar elementos e definir tamanho
        
        tagChildrensAge.frame = CGRect (x: 8,
                                y: contentView.frame.size.height-20,
                                width: contentView.frame.size.width-16,
                                height: 20)
        
        tituloItem.frame = CGRect (x: 8,
                                y: contentView.frame.size.height-50,
                                width: contentView.frame.size.width-16,
                                height: 30)
        
        imageItem.frame = CGRect (x: 8,
                                y:0,
                                width: contentView.frame.size.width-16,
                                height: contentView.frame.size.height-50)

    }
    
}
