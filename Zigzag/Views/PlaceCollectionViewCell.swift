//
//  PlaceCollectionViewCell.swift
//  Zigzag
//
//  Created by Isabela Batista on 20/09/22.
//

import UIKit

class PlaceCollectionViewCell: UICollectionViewCell {
    
    
    /* MARK: - Atributos */
    
    /// Identificador da célula
    static let identifier = "AgeCollectionViewCell"
    
    private let option1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Praia?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.backgroundColor = .systemPink
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }() //Copiar e tal
    
    private let option2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Piscina?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.backgroundColor = .systemPink
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    private let option3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Parques?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.backgroundColor = .systemPink
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    private let option4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ar livre?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.backgroundColor = .systemPink
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    // Views
    
    
    /// Constraints que vão mudar de acordo com o tamanho da tela
    private var dynamicConstraints: [NSLayoutConstraint] = []
    
    
    /* MARK: - Construtor */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupViews()
    }
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    
    
    
    /* MARK: - Encapsulamento */
    
    
    
    /* MARK: - Ciclo de Vida */
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.setupStaticTexts()
        self.setupDynamicConstraints()
        self.setupUI()
        
        self.reloadInputViews()
    }
    /* MARK: - Configurações */
    
    /// Adiciona os elementos (Views) na tela
    private func setupViews() {
        /*
         Aqui vão adicionar os elementos na tela (.addSubViews())
         */
        
        contentView.addSubview(option1)
        contentView.addSubview(option2)
        contentView.addSubview(option3)
        contentView.addSubview(option4)


        
        
    }
    
    
    /// Personalização da UI
    private func setupUI() {
        /*
         Aqui vão definidos as bordas, cor de fundo da view
         */
        
        // Define o tamanho que a célula vai ter
        // self.collectionFlow.itemSize = CGSize(width: 100, height: 100)
    }
    /// Define os textos que são estáticos (os textos em si que vão sempre ser o mesmo)
    private func setupStaticTexts() {
        /*
         Aqui vão ser configurados os textos estáticos, ícones dos botões
         tamanho das fontes, peso das fontes.. (para botões e labels ou até
         mesmo para putrp elemento caso tenha)
         */
        
        /* Labels */
        
        
        /* Botões */
    }
    
    
    /// Define as constraints que dependem do tamanho da tela
    private func setupDynamicConstraints() {
        NSLayoutConstraint.deactivate(self.dynamicConstraints)
        
        self.dynamicConstraints = [
            self.option1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.option1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.option1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.option1.heightAnchor.constraint(equalToConstant: 24),
            
            self.option2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.option2.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.option2.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.option2.heightAnchor.constraint(equalToConstant: 24),
            
            self.option3.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.option3.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.option3.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.option3.heightAnchor.constraint(equalToConstant: 24),
            
            self.option4.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.option4.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.option4.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.option4.heightAnchor.constraint(equalToConstant: 24),
            
            
        ]
        
        NSLayoutConstraint.activate(self.dynamicConstraints)
    }
}

