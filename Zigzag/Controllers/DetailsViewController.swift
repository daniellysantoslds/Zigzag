//
//  DetailsViewController.swift
//  Zigzag
//
//  Created by Isabela Batista on 22/09/22.
//

import UIKit

class DetailsViewController: UIViewController {

    var screen: DetailsView?
        
        override func loadView() {
            self.screen = DetailsView(controller: self)
            self.view = self.screen
            view.backgroundColor = .systemBackground
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // view.backgroundColor = .cyan
        }
        
        override func viewWillAppear(_ animated: Bool) {
            self.navigationController?.setNavigationBarHidden(true, animated: false)
        }
        
        func goToMainTab() {
            self.navigationController?.pushViewController(MainTabBarViewController(), animated: true)
        }
        
        
    }

