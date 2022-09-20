//
//  OnboardingView.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 19/09/22.
//
import UIKit

class OnboardingView: UIView {
    
    
    // MARK: - inicializar as views
    let backgroundView = UIImageView()
    let backgroundLinearView = UIImageView()
    let tituloLabel = UILabel()
    let descriçãoLabel = UILabel()
    let comecarButton = UIButton(configuration: .filled())
    
    
    let tituloLabelContainer = UIView()
    let descriçãoLabelContainer = UIView()
    let comecarButtonContainer = UIView()
    
    let stackView = UIStackView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewsHierarqchy()
        setupViewsAttributes()
        setupConstraints()
        setupAdditionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Setup na hierarquia das views
    private func setupViewsHierarqchy() {
        addSubview(backgroundView)
        addSubview(backgroundLinearView)
        addSubview(stackView)
        
        tituloLabelContainer.addSubview(tituloLabel)
        descriçãoLabelContainer.addSubview(descriçãoLabel)
        comecarButtonContainer.addSubview(comecarButton)
        
        stackView.addArrangedSubview(tituloLabelContainer)
        stackView.addArrangedSubview(descriçãoLabelContainer)
        stackView.addArrangedSubview(comecarButtonContainer)
        
    }
    
    private func setupViewsAttributes() {
        
        // MARK: - Conf dos atributos dessas vies
        backgroundView.image = UIImage(named: "bg-onboarding")
        backgroundView.contentMode = .scaleAspectFill
        
//        backgroundLinearView.image = UIImage(named: "bg-linear")
//        backgroundLinearView.contentMode = .scaleAspectFill
        
        
        
        tituloLabel.text = "Boas vindas"
        tituloLabel.font = UIFont.boldSystemFont(ofSize: 28)
        tituloLabel.textColor = .white
        
        
        descriçãoLabel.text = "O zigzag é um app onde você"
        descriçãoLabel.font = UIFont.boldSystemFont(ofSize: 17)
        descriçãoLabel.textColor = .white
        
        
        comecarButton.setTitle("Começar", for: .normal)
        // como quebro a linha
        comecarButton.setTitleColor(.white, for: .normal)
        //        label.font = UIFont.boldSystemFont(ofSize: 40)
        comecarButton.tintColor = UIColor(named: "Green30")
        
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 32
        
    }
    
    
    func setupConstraints() {
        // MARK: - Conf das constrainsts e autolayout
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
//        backgroundLinearView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            backgroundLinearView.topAnchor.constraint(equalTo: topAnchor),
//            backgroundLinearView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            backgroundLinearView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            backgroundLinearView.bottomAnchor.constraint(equalTo: bottomAnchor)
//        ])
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        tituloLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloLabel.topAnchor.constraint(equalTo: tituloLabelContainer.topAnchor, constant: 44),
            tituloLabel.trailingAnchor.constraint(equalTo: tituloLabelContainer.trailingAnchor, constant: -46),
            tituloLabel.leadingAnchor.constraint(equalTo: tituloLabelContainer.leadingAnchor, constant: 46),
            tituloLabel.bottomAnchor.constraint(equalTo: tituloLabelContainer.bottomAnchor)
        ])
        
        descriçãoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriçãoLabel.topAnchor.constraint(equalTo: descriçãoLabelContainer.topAnchor),
            descriçãoLabel.trailingAnchor.constraint(equalTo: descriçãoLabelContainer.trailingAnchor, constant: -46),
            descriçãoLabel.leadingAnchor.constraint(equalTo: descriçãoLabelContainer.leadingAnchor, constant: 46),
            descriçãoLabel.bottomAnchor.constraint(equalTo: tituloLabelContainer.bottomAnchor, constant: 50)
        ])
        
        comecarButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            comecarButton.centerXAnchor.constraint(equalTo: comecarButtonContainer.centerXAnchor),
            comecarButton.centerYAnchor.constraint(equalTo: comecarButtonContainer.centerYAnchor),
            comecarButton.trailingAnchor.constraint(equalTo: comecarButton.trailingAnchor, constant: -40),
            comecarButton.leadingAnchor.constraint(equalTo: comecarButtonContainer.leadingAnchor, constant: 40),
            comecarButton.heightAnchor.constraint(equalToConstant: 44)
            
        ])
        
    }
    
    func setupAdditionalConfiguration() {
        func setupAdditionalConfiguration() {
            //            // MARK: - Outras configurações
            //            comecarButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
            //        }
            
            //        @objc func tappedButton(sender: UIButton) {
            //            print("tocou botão")
            //            // precisa do delegate?
            //
        }
        
    }
    
    
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
