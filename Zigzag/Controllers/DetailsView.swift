//
//  DetailsView.swift
//  Zigzag
//
//  Created by Isabela Batista on 22/09/22.
//

import UIKit

class DetailsView: UIView {
    
    let controller: DetailsViewController
//    weak var delegate: DetailsViewDelegate?
    
//    public let voltarButton: UIButton = {
//        let button = UIButton(frame: .zero)
//        button.setTitle("Voltar", for: .normal)
//        button.setTitleColor(UIColor(named: "Green30"), for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
//        button.backgroundColor = UIColor(named: "Green30")
//        button.layer.cornerRadius = 12
//        // button.layer.borderWidth = 2
//        //button.layer.borderColor = UIColor.white.cgColor
//        button.addTarget(self, action: #selector(cancelActionButton), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.tintColor = .systemGreen
//        
//        return button
//    }()
    
    init(controller: DetailsViewController) {
        
        self.controller = controller
        super.init(frame: .zero)
        self.addSubview(self.backgroundImage)
        self.configConstraints()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
  
        self.addSubview(backgroundImage)
        self.configConstraints()
    }
    
   
    
    private lazy var backgroundImage: UIImageView = {
        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "Imagem final")
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.contentMode = .scaleAspectFill
        return backgroundImageView
    }()
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not ben implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
//            self.voltarButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
//            self.voltarButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 8),
//            self.voltarButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8),
//            self.voltarButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 32),
//
            
            self.backgroundImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 109),
            self.backgroundImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 8),
            self.backgroundImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8),
            self.backgroundImage.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 32),
            
            
        ])
        
    }
    
//    @objc func cancelActionButton() {
//        print("voltaaa")
//        delegate?.changeTela()
//
//        print()
//        //your code here when click
//    }
}
