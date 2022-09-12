//
//  ViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 09/09/22.
//

import UIKit

class MainTabBarViewController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        let vc1 = UINavigationController(rootViewController: BuscarViewController())
        let vc2 = UINavigationController(rootViewController: ExplorarViewController())
        let vc3 = UINavigationController(rootViewController: SalvosViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc2.tabBarItem.image = UIImage(systemName: "safari")
        vc3.tabBarItem.image = UIImage(systemName: "heart")

        vc1.title = "Buscar"
        vc2.title = "Explorar"
        vc3.title = "Salvos"
        
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3], animated: true)
        
    }
    
    
}

//// MARK: - Preview
//#if DEBUG
//import SwiftUI
//
//@available(iOS 13, *)
//struct View_Preview: PreviewProvider {
//    static var previews: some View {
//        Group {
//           MainTabBarViewController().showPreview().previewDevice("iPhone 13")
//           MainTabBarViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
//            //Onboarding().showPreview().previewDevice("iPhone 13")
//            //Onboarding().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
//        }
//    }
//}
//#endif
