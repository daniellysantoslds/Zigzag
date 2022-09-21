//
//  OnboardingViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

class OnboardingViewController: UIViewController {
    var screen: OnboardingView?
    
    override func loadView() {
        self.screen = OnboardingView(controller: self)
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // view.backgroundColor = .cyan
    }
    
    
}



// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct OnboardingViewController_Preview: PreviewProvider {
    static var previews: some View {
        Group {
           OnboardingViewController().showPreview().previewDevice("iPhone 13")
        OnboardingViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        
        }
    }
}
#endif
