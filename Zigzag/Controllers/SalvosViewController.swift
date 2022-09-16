//
//  SalvosViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

class SalvosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //collection view
    private var collectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collection view layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.size.width-view.frame.size.width/20, height: view.frame.size.width/1.5)
        layout.minimumLineSpacing = 16
        layout.minimumInteritemSpacing = 16
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        //desembrulhando (unwrap) a collection view pq o valor tava opcional
        guard let collectionView = collectionView else {
            return
        }
        
        
        collectionView.register(SalvosCollectionViewCell.self, forCellWithReuseIdentifier: SalvosCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds

        view.backgroundColor = .systemBackground
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SalvosCollectionViewCell.identifier, for: indexPath)
        return cell
    }
    
    
    
}

    
