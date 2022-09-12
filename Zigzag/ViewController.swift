//
//  ViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 09/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        // Do any additional setup after loading the view.
    }
    
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct View_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ViewController().showPreview().previewDevice("iPhone 13")
            ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
