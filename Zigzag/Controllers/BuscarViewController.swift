//
//  BuscarViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

// acrescentei UICollectionViewDelegate e UICollectionViewDataSource
class BuscarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    
    
    public let myView = BuscarView()
    
    
    private var myConstraints: [NSLayoutConstraint] = []
    
    override func loadView() {
        super.loadView()
        self.view = myView // A view do viewcontroller é essa
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
       }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.myView.typeCollectionView.dataSource = self
        self.myView.typeCollectionView.delegate = self
        
        self.myView.ageCollectionView.dataSource = self
        self.myView.ageCollectionView.delegate = self
        
        self.myView.placeCollectionView.dataSource = self
        self.myView.placeCollectionView.delegate = self
        
        
        
        
        
    

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    

    
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TypeCollectionViewCell.identifier, for: indexPath)
        //cell.contentView.backgroundColor = .systemBlue
        
        return cell
    }
    
    
}
    

