//
//  BuscarViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

// acrescentei UICollectionViewDelegate e UICollectionViewDataSource
class BuscarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, BuscarViewDelegate  {
    
    
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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myView // A view do viewcontroller é essa
        self.myView.delegate = self
    
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
    
    func trocaTela() {
        let indicesType = myView.typeCollectionView.indexPathsForSelectedItems
        let indicesAge = myView.ageCollectionView.indexPathsForSelectedItems
        let indicesPlace = myView.placeCollectionView.indexPathsForSelectedItems
        
        //INICIALIZAR NOVA TELA
        let nextVC = ResultadoBuscarViewControler()
        
        //PASSAR OS VALORES DO FILTRO PARA A NOVA TELA
        //nextVC.filtroDoCampoType = textoType[indicesType?[0].item ?? 0]
        //nextVC.filtroDoCampoAge = textoType[indicesAge?[0].item ?? 0]
        //nextVC.filtroDoCampoPlace = textoType[indicesPlace?[0].item ?? 0]
        
        //CHAMAR A PROXIMA TELA
        navigationController?.pushViewController(nextVC, animated: true)
        
        print(textoType[indicesType?[0].item ?? 0])
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
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 2.0
        cell?.layer.borderColor = UIColor.systemGreen.cgColor
        cell?.layer.cornerRadius = 8 
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 0
    }
}
    

