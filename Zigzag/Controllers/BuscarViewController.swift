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
    
    public let imagensType = [
        UIImage(named: "Lazer-icon" ),
        UIImage(named: "Hospedar-icon" ),
        UIImage(named: "Comer-icon" ),
    ]
    
    public let textoType = ["Lazer", "Hospedar", "Comer"]
    public let textoAge = ["0-1 anos", "2-4 anos", "5-7 anos","8-15 anos","Para todos"]
    public let textoPlace = ["Praia", "Piscina", "Parques","Ar livre","Recreação"]

    
    
    
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
        if collectionView == myView.typeCollectionView {
            return textoType.count
        } else if collectionView == myView.ageCollectionView {
            return textoAge.count
        } else {
            return textoPlace.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == myView.typeCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TypeCollectionViewCell.identifier, for: indexPath) as! TypeCollectionViewCell
            let image = imagensType[indexPath.item] ?? UIImage()
            cell.setup(image: image, texto: textoType[indexPath.item])
            return cell
        } else if collectionView == myView.ageCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AgeCollectionViewCell.identifier, for: indexPath) as! AgeCollectionViewCell
            cell.setupStaticTexts(title: textoAge[indexPath.item])
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AgeCollectionViewCell.identifier, for: indexPath) as! AgeCollectionViewCell
            cell.setupStaticTexts(title: textoPlace[indexPath.item])
            return cell
        }

    
    }
    
    
}
    

