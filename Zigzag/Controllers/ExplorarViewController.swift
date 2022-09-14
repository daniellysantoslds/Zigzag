//
//  ExplorarViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

class ExplorarViewController: UIViewController {
    
    
    private let explorarFeedTable: UITableView  =  {
        
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(ExplorarCollectionViewTableViewCell.self, forCellReuseIdentifier: ExplorarCollectionViewTableViewCell.identifier)
        return table
        
    }()
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        //adicionando visualizacao da table
        view.addSubview(explorarFeedTable)
        
        explorarFeedTable.delegate = self
        explorarFeedTable.dataSource = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        explorarFeedTable.frame = view.bounds
    }
    
    
    
}

extension  ExplorarViewController: UITableViewDelegate, UITableViewDataSource {
    
   
    //numero de sessoes
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    //numero de celulas
    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ExplorarCollectionViewTableViewCell.identifier, for: indexPath) as? ExplorarCollectionViewTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
}



// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExplorarViewController_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ExplorarViewController().showPreview().previewDevice("iPhone 13")
            ExplorarViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
