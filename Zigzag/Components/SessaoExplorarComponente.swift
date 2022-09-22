//
//  SessaoExplorarComponente.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 21/09/22.
//

import UIKit


class SessaoExplorarModel {
    
    let imagem: String
    let titulo: String
    let subTitulo: String
    
    init(imagem: String, titulo: String, subTitulo: String) {
        self.imagem = imagem
        self.titulo = titulo
        self.subTitulo = subTitulo
        
    }
}

class SessaoExplorarComponente: UIView {
    
    let titulo: String
    let listaValores: [SessaoExplorarModel]
    
    init(titulo: String, listaValores: [SessaoExplorarModel]) {
        self.titulo = titulo
        self.listaValores = listaValores
        super.init(frame: .zero)
        setupHierarchy()
        setupConstraints()
        collection.dataSource = self
        collection.delegate = self
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    let stackView: UIStackView = UIStackView()
    
    let stackViewSessaoLabel: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()
    
    
    let tituloLabel: UILabel = {
        let labelTituloView = UILabel()
        labelTituloView.text = ""
        labelTituloView.font = UIFont.boldSystemFont(ofSize: 22)
        labelTituloView.textColor = .black
        labelTituloView.translatesAutoresizingMaskIntoConstraints = false
        return labelTituloView
        
    }()
    
    
    
    let verTodosButton: UIButton = {
        let verTodosButtonView = UIButton(frame: .zero)
        verTodosButtonView.translatesAutoresizingMaskIntoConstraints = false
        
        verTodosButtonView.setTitleColor(UIColor(named: "Green30"), for: .normal)
        verTodosButtonView.setTitle("Ver Todos", for: .normal)
        //        verTodosButtonView.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        verTodosButtonView.clipsToBounds = true
        verTodosButtonView.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        verTodosButtonView.layer.cornerRadius = 12
        verTodosButtonView.titleLabel?.textAlignment = .right
        return verTodosButtonView
        
    }()
    
    let collection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 164, height: 204)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ExplorarCollectionViewCell.self, forCellWithReuseIdentifier: ExplorarCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        //        collectionView.backgroundColor = .red
        return collectionView
        
    }()
    
    
    func setupHierarchy() {
        self.addSubview(stackView)
        tituloLabel.text = self.titulo
        stackViewSessaoLabel.addSubview(tituloLabel)
        stackViewSessaoLabel.addSubview(verTodosButton)
        stackView.addSubview(stackViewSessaoLabel)
        
        stackView.addSubview(collection)
        
        
    }
    
    
    func setupConstraints() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 300)
            
        ])
        
        
        stackViewSessaoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewSessaoLabel.topAnchor.constraint(equalTo: stackView.topAnchor),
            stackViewSessaoLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            stackViewSessaoLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            stackViewSessaoLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: 40),
            
        ])
        
        tituloLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloLabel.topAnchor.constraint(equalTo: stackViewSessaoLabel.topAnchor),
            tituloLabel.trailingAnchor.constraint(equalTo: stackViewSessaoLabel.trailingAnchor),
            tituloLabel.leadingAnchor.constraint(equalTo: stackViewSessaoLabel.leadingAnchor),
            tituloLabel.bottomAnchor.constraint(equalTo: stackViewSessaoLabel.topAnchor, constant: 40),
            
            
        ])
        
        verTodosButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            verTodosButton.topAnchor.constraint(equalTo: stackViewSessaoLabel.topAnchor),
            verTodosButton.trailingAnchor.constraint(equalTo: stackViewSessaoLabel.trailingAnchor, constant: -16),
            verTodosButton.leadingAnchor.constraint(equalTo: stackViewSessaoLabel.leadingAnchor, constant: 260),
            verTodosButton.bottomAnchor.constraint(equalTo: stackViewSessaoLabel.topAnchor, constant: 40),
            
        ])
        
        collection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: tituloLabel.topAnchor, constant: 40),
            collection.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            collection.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            collection.bottomAnchor.constraint(equalTo: tituloLabel.topAnchor, constant: 240)
            
        ])
        
        
        self.backgroundColor = .systemBackground
    }
    
    
}


extension SessaoExplorarComponente: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listaValores.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item:SessaoExplorarModel = self.listaValores[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ExplorarCollectionViewCell.identifier, for: indexPath) as? ExplorarCollectionViewCell
        cell?.configure(imagem: UIImage(named: item.imagem) ?? UIImage(), lugar: item.titulo, idade: item.subTitulo)
        cell?.backgroundColor = UIColor(named: "white")
        return cell ?? UICollectionViewCell()
    }
    
}

