//
//  OnboardingViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        Text("OI")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        Group {
           OnboardingViewController().showPreview().previewDevice("iPhone 13")
           OnboardingViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        
        }
    }
}
#endif
