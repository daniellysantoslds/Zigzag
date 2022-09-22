//
//  TypeCollectionViewCell.swift
//  Zigzag
//
//  Created by Isabela Batista on 16/09/22.
//

import UIKit

class TypeCollectionViewCell: UICollectionViewCell {
    static let identifier = "TypeCollectionViewCell"
    
    private let borda: UIView = {
        let borda = UIView()
        borda.translatesAutoresizingMaskIntoConstraints = false
        borda.layer.cornerRadius = 8
        borda.layer.borderWidth = 1
        borda.layer.borderColor = UIColor.lightGray.cgColor

        
        return borda
    }()
    
    private let imageview: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "Hospedar-icon")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        
        return imageview
        
    }()
    
    private let titulo1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lazer"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //adiciona view aqui
        contentView.addSubview(borda)
        contentView.addSubview(imageview)
        contentView.addSubview(titulo1)
        
        setupConstraints()
        
        //        let images = [
        //            UIImage(named: "Hospedar-icon"),
        //            UIImage(named: "Lazer-icon"),
        //            UIImage(named: "Comer-icon"),
        //        ].compactMap({ $0 })
        //        imageview.image = images.randomElement()//COMO EU TIRO O RANDOM MDS DO CEU?
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageview.image = nil
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            self.borda.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.borda.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            self.borda.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            self.borda.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            self.imageview.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            self.imageview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            self.imageview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -66),
            self.imageview.heightAnchor.constraint(equalToConstant: 32),
            self.imageview.widthAnchor.constraint(equalToConstant: 32),

            self.titulo1.topAnchor.constraint(equalTo: imageview.bottomAnchor, constant: 21),
            self.titulo1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            self.titulo1.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -8),
            self.titulo1.heightAnchor.constraint(equalToConstant: 24),
        ])
    }
    
    public func setup(image: UIImage, texto: String){
        imageview.image = image
        titulo1.text = texto
    }
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct TypeCollectionViewCell_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            TypeCollectionViewCell().showPreview().previewLayout(PreviewLayout.fixed(width: 104, height: 94))
        }
    }
}

#endif
