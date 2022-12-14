//
//  ComerCollectionViewCell.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 21/09/22.
//

import UIKit

class ExplorarCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ComerCell"
    
    
    private let borda: UIView = {
        let borda = UIView()
        borda.translatesAutoresizingMaskIntoConstraints = false
        borda.layer.cornerRadius = 8
        borda.layer.borderWidth = 1
        borda.layer.borderColor = UIColor.white.cgColor

        return borda
    }()
    
    
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "teste")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Pessoas"
        label.textAlignment = .left
        label.clipsToBounds = true
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor(named: "Gray30")
        return label
    }()
    
    
    let labeldois: UILabel = {
        let label = UILabel()
        label.text = "2-anos"
        label.textAlignment = .left
        label.clipsToBounds = true
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "Green30")


        return label
    }()
    
    
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.alignment = .leading
        stackView.spacing = 0
        return stackView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupConstraints()
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupHierarchy() {
        
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(borda)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(labeldois)
        
    }
   
    
    func setupConstraints() {
        
        borda.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            borda.topAnchor.constraint(equalTo: stackView.topAnchor),
            borda.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            borda.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            borda.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
        ])
        
 
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: stackView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: label.topAnchor, constant: -8),
            imageView.heightAnchor.constraint(equalToConstant: 129)
            
        ])
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            label.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 48),
            label.bottomAnchor.constraint(equalTo: labeldois.topAnchor, constant: -4),
            label.heightAnchor.constraint(equalToConstant: 30)

            
        ])
        
        labeldois.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labeldois.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 4),
            labeldois.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8),
            labeldois.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -96),
            labeldois.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 8)
            
        ])
        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.frame = CGRect(x: 0, y: 0, width: 164, height: 129)
        label.frame = CGRect(x: 0, y: 0, width: 108, height: 50)
        labeldois.frame = CGRect(x: 0, y: 0, width: 61, height: 13)
        
    }
    
    
    
    public func configure(imagem: UIImage, lugar: String, idade:String) {
        imageView.image = imagem
        label.text = lugar
        labeldois.text = idade
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    
    
    
}






