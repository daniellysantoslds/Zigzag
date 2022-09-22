//
//  ExplorarViewController.swift
//  Zigzag
//
//  Created by Danielly Santos Lopes da Silva on 12/09/22.
//

import UIKit


class ExplorarViewController: UIViewController {
    
    let scrollView = UIScrollView()
    
    let stackView = UIStackView()
    var sessaoComer: SessaoExplorarComponente?
    var sessaoLazer: SessaoExplorarComponente?
    var sessaoHospedar: SessaoExplorarComponente?
    var sessaoFamilia: SessaoExplorarComponente?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sessaoComer = SessaoExplorarComponente(titulo: "Comer", listaValores: [SessaoExplorarModel(imagem: "mcdonald", titulo: "McDonald's Piedade", subTitulo: "5–14 anos"), SessaoExplorarModel(imagem: "cocobambu", titulo: "Coco Bambu", subTitulo: "5–14 anos"), SessaoExplorarModel(imagem: "massarela", titulo: "Massarela Grill", subTitulo: "Todas as idades")])
        
        self.sessaoLazer = SessaoExplorarComponente(titulo: "Lazer", listaValores: [SessaoExplorarModel(imagem: "mirabilandia", titulo: "Mirabilandia", subTitulo: "15anos"), SessaoExplorarModel(imagem: "venezawaterpark", titulo: "Veneza Waterpark", subTitulo: "15anos"), SessaoExplorarModel(imagem: "gamestation", titulo: "Game station", subTitulo: "15anos"), SessaoExplorarModel(imagem: "espacociência ", titulo: "Espaco ciência ", subTitulo: "15anos") ])
        
        self.sessaoHospedar = SessaoExplorarComponente(titulo: "Hospedar", listaValores: [SessaoExplorarModel(imagem: "recifepraia", titulo: "Recife Praia Hotel", subTitulo: "15anos"), SessaoExplorarModel(imagem: "grand", titulo: "Grand Mercure", subTitulo: "15anos"), SessaoExplorarModel(imagem: "radisson", titulo: "Radisson Recife", subTitulo: "15anos"), SessaoExplorarModel(imagem: "ibis", titulo: "Ibis Recife Boa Viagem", subTitulo: "15anos")])
        
        self.sessaoFamilia = SessaoExplorarComponente(titulo: "Para toda a família", listaValores: [SessaoExplorarModel(imagem: "recifepraia", titulo: "Recife Praia Hotel", subTitulo: "15anos"), SessaoExplorarModel(imagem: "mirabilandia", titulo: "Mirabilandia", subTitulo: "15anos"), SessaoExplorarModel(imagem: "massarela", titulo: "Massarela", subTitulo: "15anos"),SessaoExplorarModel(imagem: "cocobambu", titulo: "Coco Bambu", subTitulo: "15anos") ])
        
        
        setupHierarchy()
        setupConstraints()
        
    }
    
    func setupHierarchy() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addSubview(sessaoComer!)
        stackView.addSubview(sessaoLazer!)
        stackView.addSubview(sessaoHospedar!)
        stackView.addSubview(sessaoFamilia!)
        
    }
    
    
    func setupConstraints() {
        
        scrollView.backgroundColor = .systemBackground
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
        
        stackView.backgroundColor = .systemBackground
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 44),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, constant: 375)
            
        ])
        
        
        sessaoComer!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sessaoComer!.topAnchor.constraint(equalTo: stackView.topAnchor),
            sessaoComer!.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            sessaoComer!.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            sessaoComer!.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: 230)
            
        ])
        
        
        sessaoLazer!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sessaoLazer!.topAnchor.constraint(equalTo: sessaoComer!.bottomAnchor, constant: 16),
            sessaoLazer!.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            sessaoLazer!.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            sessaoLazer!.bottomAnchor.constraint(equalTo: sessaoComer!.bottomAnchor, constant: 250),
            
        ])
        
        
        sessaoHospedar!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sessaoHospedar!.topAnchor.constraint(equalTo: sessaoLazer!.bottomAnchor, constant: 16),
            sessaoHospedar!.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            sessaoHospedar!.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            sessaoHospedar!.bottomAnchor.constraint(equalTo: sessaoLazer!.bottomAnchor, constant: 250),
            
        ])
        
        sessaoFamilia!.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sessaoFamilia!.topAnchor.constraint(equalTo: sessaoHospedar!.bottomAnchor, constant: 16),
            sessaoFamilia!.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            sessaoFamilia!.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            sessaoFamilia!.bottomAnchor.constraint(equalTo: sessaoHospedar!.bottomAnchor, constant: 250),
            
        ])
        
        
        
        
        view.backgroundColor = .systemBackground
    }
    
    
}



// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExplorarViewController_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ExplorarViewController().showPreview().previewDevice("iPhone 13")
            ExplorarViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
            
        }
    }
}
#endif

