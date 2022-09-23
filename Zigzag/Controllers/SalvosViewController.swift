//
//  SalvosViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

    class SalvosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
        
        //collection view
        private var SalvosCollectionView: UICollectionView?
        
        public let imagensResults = [
            UIImage(named: "Espaco-image" ),
            UIImage(named: "Grand-image" ),
            UIImage(named: "Veneza-image" ),
        ]
        
        public let textoResults = ["Espaço ciência", "Grand Hotel Recife", "Veneza Water Park"]

        override func viewDidLoad() {
            super.viewDidLoad()
         

            
            
            view.backgroundColor = .systemCyan
            
            //collection view layout
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.itemSize = CGSize(width: view.frame.size.width-view.frame.size.width/20, height: view.frame.size.width/1.5)
            layout.minimumLineSpacing = 16
            layout.minimumInteritemSpacing = 16
            
            SalvosCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            
            
            //desembrulhando (unwrap) a collection view pq o valor tava opcional
            guard let collectionView = SalvosCollectionView else {
                return
            }
            
            
            collectionView.register(ResultadoCollectionViewCell.self, forCellWithReuseIdentifier: ResultadoCollectionViewCell.identifier)
            collectionView.dataSource = self
            collectionView.delegate = self
            view.addSubview(collectionView)
            collectionView.frame = view.bounds

            view.backgroundColor = .systemBackground
        }
        
        
        func openDetails(index: Int) {
            let controller = DetailsViewController()
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true)
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 2
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ResultadoCollectionViewCell.identifier, for: indexPath)
            as! ResultadoCollectionViewCell
            let image = imagensResults[indexPath.item] ?? UIImage()
            cell.setup(image: image, texto: textoResults[indexPath.item])
            return cell
       
            
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let cell = collectionView.cellForItem(at: indexPath)
            openDetails(index: indexPath.row)
            
           
        }
        
    }



