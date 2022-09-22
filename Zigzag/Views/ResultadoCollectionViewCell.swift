//
//  ResultadoCollectionViewCell.swift
//  Zigzag
//
//  Created by Isabela Batista on 21/09/22.
//

import UIKit

class ResultadoCollectionViewCell: UICollectionViewCell {
    static let identifier = "ResultadoCollectionViewCell"
 
    //configs imagem
    
    private let borda: UIView = {
        let borda = UIView()
        borda.translatesAutoresizingMaskIntoConstraints = false
        borda.layer.cornerRadius = 8
        borda.layer.borderWidth = 1
        borda.layer.borderColor = UIColor.lightGray.cgColor

        
        return borda
    }()
    
    private let imageItem: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "Game-image")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.layer.cornerRadius = 8
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        
        return imageview
        
    }()
    
    //configs titulo
    private let tituloItem: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Custom"
        label.textAlignment = .center
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray 40")
        label.font = UIFont.systemFont(ofSize: 15)
        
        
        return label
    }()
    
    //configs tag de idade
    private let tagChildrensAge: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Para Todos"
        label.numberOfLines = 2
        label.textAlignment = .center
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Green 20")
        label.font = UIFont.systemFont(ofSize: 15)
       
        
        return label
    }()
    
    //chamar os elementos
    override init(frame: CGRect) {
        super.init(frame: frame)
        //contentView.backgroundColor = .systemRed
        contentView.addSubview(borda)
        contentView.addSubview(tituloItem)
        contentView.addSubview(tagChildrensAge)
        contentView.addSubview(imageItem)
        self.setupConstraints()

        
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
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            self.borda.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.borda.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            self.borda.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            self.borda.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            self.imageItem.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.imageItem.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            self.imageItem.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            self.imageItem.heightAnchor.constraint(equalToConstant: 179),
            self.imageItem.widthAnchor.constraint(equalToConstant: 343),
            
            self.tituloItem.topAnchor.constraint(equalTo: imageItem.bottomAnchor, constant: 8),
            self.tituloItem.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            self.tituloItem.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -36),
            self.tituloItem.heightAnchor.constraint(equalToConstant: 20),
            
            self.tagChildrensAge.topAnchor.constraint(equalTo: tituloItem.bottomAnchor, constant: 4),
            self.tagChildrensAge.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            self.tagChildrensAge.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -36),
            self.tagChildrensAge.heightAnchor.constraint(equalToConstant: 20),
        
        ])
    }
    
    public func setup(image: UIImage, texto: String){
        imageItem.image = image
        tituloItem.text = texto
    }

}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ResultadoCollectionViewCell_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ResultadoCollectionViewCell().showPreview().previewLayout(PreviewLayout.fixed(width: 343, height: 179))
        }
    }
}

#endif


    

