//
//  ExplorarViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

class ExplorarViewController: UIViewController {
    
    
    let contentView = UIView()
    let stackView = UIStackView()
    let stackViewComer = UIStackView()
    
    let ComerCollectionView: UICollectionView = {
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 164, height: 204)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ComerCollectionViewCell.self, forCellWithReuseIdentifier: ComerCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        //        collectionView.backgroundColor = .red
        return collectionView
    }()
    
    
    let labelTituloComer: UILabel = {
        let labelTituloView = UILabel()
        labelTituloView.text = "Boas vindas"
        labelTituloView.font = UIFont.boldSystemFont(ofSize: 28)
        labelTituloView.textColor = .black
        labelTituloView.translatesAutoresizingMaskIntoConstraints = false
        return labelTituloView
    }()
    
    
    let LazerCollectionView: UICollectionView = {
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 164, height: 204)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ComerCollectionViewCell.self, forCellWithReuseIdentifier: ComerCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        //        collectionView.backgroundColor = .red
        return collectionView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupConstraints()
        ComerCollectionView.dataSource = self
        ComerCollectionView.delegate = self
        LazerCollectionView.dataSource = self
        LazerCollectionView.delegate = self
        
    }
    
    func setupHierarchy() {
        view.addSubview(stackView)
        stackViewComer.addSubview(labelTituloComer)
        stackViewComer.addSubview(ComerCollectionView)
        
        stackView.addSubview(stackViewComer)
        stackView.addSubview(LazerCollectionView)
        
    }
    
    
    func setupConstraints() {
        stackView.backgroundColor = .blue
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 44),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
        
        stackViewComer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewComer.topAnchor.constraint(equalTo: stackView.topAnchor),
            stackViewComer.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            stackViewComer.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            stackViewComer.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: 300)
            
        ])
        
        
        labelTituloComer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelTituloComer.topAnchor.constraint(equalTo: stackViewComer.topAnchor),
            labelTituloComer.trailingAnchor.constraint(equalTo: stackViewComer.trailingAnchor),
            labelTituloComer.leadingAnchor.constraint(equalTo: stackViewComer.leadingAnchor),
            labelTituloComer.bottomAnchor.constraint(equalTo: stackViewComer.topAnchor, constant: 40),
            
        ])
        
        ComerCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ComerCollectionView.topAnchor.constraint(equalTo: labelTituloComer.topAnchor, constant: 40
                                                    ),
            ComerCollectionView.trailingAnchor.constraint(equalTo: stackViewComer.trailingAnchor),
            ComerCollectionView.leadingAnchor.constraint(equalTo: stackViewComer.leadingAnchor),
            ComerCollectionView.bottomAnchor.constraint(equalTo: labelTituloComer.topAnchor, constant: 260)
            
        ])
        
        LazerCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            LazerCollectionView.topAnchor.constraint(equalTo: ComerCollectionView.bottomAnchor
                                                    ),
            LazerCollectionView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            LazerCollectionView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            LazerCollectionView.bottomAnchor.constraint(equalTo: ComerCollectionView.bottomAnchor, constant: 280),
            
        ])
        
        
        
        //contentView.backgroundColor = .red
        view.backgroundColor = .systemBackground
    }
    
    
}

extension ExplorarViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.ComerCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ComerCollectionViewCell.identifier, for: indexPath) as? ComerCollectionViewCell
            cell?.configure(imagem: UIImage(named: "teste") ?? UIImage(), lugar: "shsha", idade: "poimpo")
            //cell.backgroundColor = .cyan
            return cell ?? UICollectionViewCell()
        } else if collectionView == self.LazerCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ComerCollectionViewCell.identifier, for: indexPath) as? ComerCollectionViewCell
            cell?.configure(imagem: UIImage(named: "teste") ?? UIImage(), lugar: "tamtam", idade: "tamtam")
            //cell.backgroundColor = .cyan
            return cell ?? UICollectionViewCell()
        }
        
        
        return UICollectionViewCell()
        
        
    }
    
}





