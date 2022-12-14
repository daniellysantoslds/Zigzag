//
//  OnboardingView.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 19/09/22.
//
import UIKit

class OnboardingView: UIView {

    let controller: OnboardingViewController

    
    init(controller: OnboardingViewController) {
        self.controller = controller
        super.init(frame: .zero)
        self.addSubview(self.backgroundImage)
        self.addSubview(self.labelDescricao)
        self.addSubview(self.labelTitulo)
        self.addSubview(self.comecarButton)
        self.configConstraints()
    }

    
    private lazy var backgroundImage: UIImageView = {
        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "backgound")
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.contentMode = .scaleAspectFill
        return backgroundImageView
    }()
    
    private lazy var labelTitulo: UILabel = {
        let labelTituloView = UILabel()
        labelTituloView.text = "Boas vindas"
        labelTituloView.font = UIFont.boldSystemFont(ofSize: 28)
        labelTituloView.textColor = .white
        labelTituloView.translatesAutoresizingMaskIntoConstraints = false
        return labelTituloView
    }()

    private lazy var labelDescricao: UILabel = {
        let labelDescricaoView = UILabel()
        labelDescricaoView.text = "Um app onde você encontra locais ideais para curtir com as crianças."
        labelDescricaoView.numberOfLines = 2
        labelDescricaoView.textColor = .white
        labelDescricaoView.font = UIFont.boldSystemFont(ofSize: 17)
        labelDescricaoView.translatesAutoresizingMaskIntoConstraints = false
        return labelDescricaoView
    }()
    
    
    private lazy var comecarButton: UIButton = {
        let comecarButtonView = UIButton(frame: .zero)
        comecarButtonView.translatesAutoresizingMaskIntoConstraints = false
        comecarButtonView.backgroundColor = UIColor(named: "Green30")
        comecarButtonView.setTitle("Começar", for: .normal)
        comecarButtonView.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        comecarButtonView.clipsToBounds = true
        comecarButtonView.layer.cornerRadius = 12
        comecarButtonView.titleLabel?.textAlignment = .center
        comecarButtonView.addTarget(self, action: #selector(onStart), for: .touchDown)
        return comecarButtonView
        
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not ben implemented")
    }
    
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            self.backgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            self.backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        
            self.labelTitulo.topAnchor.constraint(equalTo: self.topAnchor, constant: -717),
            self.labelTitulo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 100),
            self.labelTitulo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            self.labelTitulo.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.labelTitulo.widthAnchor.constraint(equalToConstant: 283),
            
            self.labelDescricao.topAnchor.constraint(equalTo: self.topAnchor, constant: -600),
            self.labelDescricao.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            self.labelDescricao.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            self.labelDescricao.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            
            self.comecarButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            self.comecarButton.widthAnchor.constraint(equalToConstant: 40),
            self.comecarButton.heightAnchor.constraint(equalToConstant: 40),
            self.comecarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            self.comecarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
           
         
            
        
        
        ])
        
//        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
           
            
//
//        labelTitulo.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//
//        ])
//
//
//        labelDescricao.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//
//            labelDescricao.topAnchor.constraint(equalTo:  labelDescricao.topAnchor),
//            labelDescricao.trailingAnchor.constraint(equalTo:  labelDescricao.trailingAnchor, constant: -46),
//            labelDescricao.leadingAnchor.constraint(equalTo:  labelDescricao.leadingAnchor, constant: 46),
//            labelDescricao.bottomAnchor.constraint(equalTo: labelDescricao.bottomAnchor)
//
//        ])
//
//        comecarButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            comecarButton.centerXAnchor.constraint(equalTo: comecarButton.centerXAnchor),
//            comecarButton.centerYAnchor.constraint(equalTo: comecarButton.centerYAnchor),
//           comecarButton.trailingAnchor.constraint(equalTo: comecarButton.trailingAnchor, constant: -40),
//            comecarButton.leadingAnchor.constraint(equalTo: comecarButton.leadingAnchor, constant: 40),
//            comecarButton.heightAnchor.constraint(equalToConstant: 44)
//
//        ])
            
           
    }
    
    @objc private func onStart() {
        controller.goToMainTab()
    }
    
    
    
    
  
    
 
    }
    
//// MARK: - Preview
//#if DEBUG
//import SwiftUI
//
//@available(iOS 13, *)
//struct OnboardingView_Preview: PreviewProvider {
//    static var previews: some View {
//        Group {
//           OnboardingView().showPreview().previewDevice("iPhone 13")
//           OnboardingView().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
//        
//        }
//    }
//}
//#endif
