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

    }
    
    override func loadView() {
        let view = UIView()
        
        // MARK: - inicializar as views
        let backgroundView = UIImageView()
        let backgroundLinearView = UIImageView()
        let tituloLabel = UILabel()
        let descriçãoLabel = UILabel()
        let começarButton = UIButton(configuration: .filled())
 
        
        let tituloLabelContainer = UIView()
        let descriçãoLabelContainer = UIView()
        let começarButtonContainer = UIView()
      
        let stackView = UIStackView()
        
        // MARK: - Setup na hierarquia das views
        view.addSubview(backgroundView)
        view.addSubview(backgroundLinearView)
        view.addSubview(stackView)
        
        
        tituloLabelContainer.addSubview(tituloLabel)
        descriçãoLabelContainer.addSubview(descriçãoLabel)
        começarButtonContainer.addSubview(começarButton)
        
        stackView.addArrangedSubview(tituloLabelContainer)
        stackView.addArrangedSubview(descriçãoLabelContainer)
        stackView.addArrangedSubview(começarButtonContainer)
        
        
        // MARK: - Conf dos atributos dessas vies
        backgroundView.image = UIImage(named: "bg-onboarding")
        backgroundView.contentMode = .scaleAspectFill
        
        tituloLabel.text = "oii"
        
        descriçãoLabel.text = "oii"
        
        
        começarButton.setTitle("Começar", for: .normal)
        começarButton.setTitleColor(.label, for: .normal)
        começarButton.tintColor = .systemOrange
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 32
        
        
        // MARK: - Conf das constrainsts e autolayout
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        tituloLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloLabel.topAnchor.constraint(equalTo: tituloLabelContainer.topAnchor, constant: 44),
            tituloLabel.trailingAnchor.constraint(equalTo: tituloLabelContainer.trailingAnchor),
            tituloLabel.leadingAnchor.constraint(equalTo: tituloLabelContainer.leadingAnchor),
            tituloLabel.bottomAnchor.constraint(equalTo: tituloLabelContainer.bottomAnchor)
        ])
        
        descriçãoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriçãoLabel.topAnchor.constraint(equalTo: descriçãoLabelContainer.topAnchor),
            descriçãoLabel.trailingAnchor.constraint(equalTo: descriçãoLabelContainer.trailingAnchor),
            descriçãoLabel.leadingAnchor.constraint(equalTo: descriçãoLabelContainer.leadingAnchor),
            descriçãoLabel.bottomAnchor.constraint(equalTo: descriçãoLabelContainer.bottomAnchor)
        ])
        
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.view = view
        
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
