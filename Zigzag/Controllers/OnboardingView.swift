//
//  OnboardingView.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 19/09/22.
//
import UIKit

class OnboardingView: UIView {
    
    
    
    
    
    
    
  
    
 
    }
    
    

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct OnboardingView_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingView().showPreview().previewDevice("iPhone 13")
            OnboardingView().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
            
        }
    }
}
#endif
