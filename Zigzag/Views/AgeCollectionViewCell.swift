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
    
    private let borda: UIView = {
        let borda = UIView()
        borda.translatesAutoresizingMaskIntoConstraints = false
        borda.layer.cornerRadius = 8
        borda.layer.borderWidth = 1
        borda.layer.borderColor = UIColor.lightGray.cgColor
        
        return borda
    }()
    
    private let nome: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0-2 anos"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .center
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    

    
    
    
    // Views
    
    
    /// Constraints que vão mudar de acordo com o tamanho da tela
    private var dynamicConstraints: [NSLayoutConstraint] = []
    
    
    /* MARK: - Construtor */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
        self.setupDynamicConstraints()
    }
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    

    /* MARK: - Configurações */
    
    /// Adiciona os elementos (Views) na tela
    private func setupViews() {
        /*
         Aqui vão adicionar os elementos na tela (.addSubViews())
         */
        
        contentView.addSubview(borda)
        contentView.addSubview(nome)
        
    
        
    }

    /// Define os textos que são estáticos (os textos em si que vão sempre ser o mesmo)
    func setupStaticTexts(title: String) {
        /*
         Aqui vão ser configurados os textos estáticos, ícones dos botões
         tamanho das fontes, peso das fontes.. (para botões e labels ou até
         mesmo para putrp elemento caso tenha)
         */
        
        /* Labels */
        
        nome.text = title
        
        
        /* Botões */
    }
    
    
    /// Define as constraints que dependem do tamanho da tela
    private func setupDynamicConstraints() {
        NSLayoutConstraint.deactivate(self.dynamicConstraints)
        
        self.dynamicConstraints = [
            self.borda.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.borda.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            self.borda.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            self.borda.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            self.nome.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            self.nome.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            self.nome.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            self.nome.heightAnchor.constraint(equalToConstant: 24),
            
            
            
        ]
        
        NSLayoutConstraint.activate(self.dynamicConstraints)
    }
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct AgeCollectionViewCell_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            AgeCollectionViewCell().showPreview().previewLayout(PreviewLayout.fixed(width: 94, height: 44))
        }
    }
}

#endif
