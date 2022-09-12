//
//  Onboarding.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit

class Onboarding: UIView {
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "bg-onboarding")
        return image
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.subImageView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder) has not beem implemented")
    }
    
    

    

}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct View_Preview: PreviewProvider {
    static var previews: some View {
        Group {
           //MainTabBarViewController().showPreview().previewDevice("iPhone 13")
           //MainTabBarViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
            Onboarding().showPreview().previewDevice("iPhone 13")
            Onboarding().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

