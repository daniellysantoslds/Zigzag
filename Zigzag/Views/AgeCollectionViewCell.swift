//
//  AgeCollectionViewCell.swift
//  Zigzag
//
//  Created by Isabela Batista on 20/09/22.
//

import UIKit

class AgeCollectionViewCell: UICollectionViewCell {
    
    /* MARK: - Atributos */
    
    /// Identificador da célula
    static let identifier = "AgeCollectionViewCell"
    
    private let idade1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0-2 anos?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.backgroundColor = .systemPink
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    private let idade2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0-4 anos?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.backgroundColor = .systemPink
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    private let idade3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0-6 anos?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.backgroundColor = .systemPink
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    private let idade4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5-14 anos?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.backgroundColor = .systemPink
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    private let idade5: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Todas as idades?"
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
        
        contentView.addSubview(idade1)
        contentView.addSubview(idade2)
        contentView.addSubview(idade3)
        contentView.addSubview(idade4)
        contentView.addSubview(idade5)
        
        

        
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
            self.idade1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.idade1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.idade1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.idade1.heightAnchor.constraint(equalToConstant: 24),
            
            self.idade2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.idade2.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.idade2.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.idade2.heightAnchor.constraint(equalToConstant: 24),
            
            self.idade3.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.idade3.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.idade3.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.idade3.heightAnchor.constraint(equalToConstant: 24),
            
            self.idade4.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.idade4.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.idade4.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.idade4.heightAnchor.constraint(equalToConstant: 24),
            
            self.idade5.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.idade5.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.idade5.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.idade5.heightAnchor.constraint(equalToConstant: 24),
            
            
        ]
        
        NSLayoutConstraint.activate(self.dynamicConstraints)
    }
}
