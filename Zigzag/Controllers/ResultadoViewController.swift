//
//  ResultadoViewController.swift
//  Zigzag
//
//  Created by Isabela Batista on 21/09/22.
//

import UIKit

class ResultadoBuscarViewControler: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //collection view
    private var resultadoCollectionView: UICollectionView?
    
    public let imagensResults = [
        UIImage(named: "Game-image" ),
        UIImage(named: "Mirabilandia-image" ),
        UIImage(named: "Veneza-image" ),
    ]
    
    public let textoResults = ["Game Station", "Mirabilandia", "Veneza Water Park"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        //collection view layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.size.width-view.frame.size.width/20, height: view.frame.size.width/1.5)
        layout.minimumLineSpacing = 16
        layout.minimumInteritemSpacing = 16
        
        resultadoCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        
        //desembrulhando (unwrap) a collection view pq o valor tava opcional
        guard let collectionView = resultadoCollectionView else {
            return
        }
        
        
        collectionView.register(ResultadoCollectionViewCell.self, forCellWithReuseIdentifier: ResultadoCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds

        view.backgroundColor = .systemBackground
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ResultadoCollectionViewCell.identifier, for: indexPath)
        as! ResultadoCollectionViewCell
        let image = imagensResults[indexPath.item] ?? UIImage()
        //cell.setup(image: image, texto: textoResults[indexPath.item])
        return cell
   
        
    }
    
    
    
}
