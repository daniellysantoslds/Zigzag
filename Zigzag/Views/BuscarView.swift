import UIKit

class BuscarView: UIView {
    
    /* MARK: - Atributos */
    
    
    public let typeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 103.67, height: 93)
        layout.minimumLineSpacing = 16
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
    }()
    
    public let ageCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 94, height: 44)
        layout.minimumLineSpacing = 8
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
    }()
    
    public let placeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 94, height: 44)
        layout.minimumLineSpacing = 8
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
    }()
    
    private let title1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O que você procura?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    private let title2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Que idade(s) tem a(s) criança(s)??"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    private let title3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Que tipos de atividades interessam?"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.clipsToBounds = true
        label.textColor = UIColor(named: "Gray40")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    private let goButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Filtrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        button.backgroundColor = UIColor(named: "Green30")
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.addTarget(self, action: #selector(cancelActionButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    // Views
    
    
    
    // Outros
    
    /// Constraints que vão mudar de acordo com o tamanho da tela
    private var dynamicConstraints: [NSLayoutConstraint] = []
    
    /// Configurações do layout da collection
    
    
    
    
    /* MARK: - Construtor */
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .systemBackground //AQUI A COR DO FUNDO
        self.registerCell()
        self.setupViews()
        
    }
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    
    
    
    /* MARK: - Encapsulamento */
    
    /* Ações dos Botões */
    
    /// Define a ação do botão
    public func setAction(target: Any?, action: Selector) -> Void {
        // self. .addTarget(target, action: action, for: .touchDown)
    }
    
    
    
    /* MARK: - Ciclo de Vida */
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        self.setupUI()
        self.setupStaticTexts()
        self.setupDynamicConstraints()
    }
    /* MARK: - Configurações */
    
    /* Collection */
    
    /// Registra as células nas collections/table
    private func registerCell() {
        self.typeCollectionView.register(TypeCollectionViewCell.self, forCellWithReuseIdentifier: TypeCollectionViewCell.identifier)
        self.ageCollectionView.register(AgeCollectionViewCell.self, forCellWithReuseIdentifier: AgeCollectionViewCell.identifier)
        self.placeCollectionView.register(AgeCollectionViewCell.self, forCellWithReuseIdentifier: AgeCollectionViewCell.identifier)
        
    }
    
    
    
    
    /* Geral */
    
    /// Adiciona os elementos (Views) na tela
    private func setupViews() {
        /*
         Aqui vão adicionar os elementos na tela (.addSubViews())
         */
        
        self.addSubview(title1)
        self.addSubview(typeCollectionView)
        self.addSubview(title2)
        self.addSubview(ageCollectionView)
        self.addSubview(title3)
        self.addSubview(placeCollectionView)
        self.addSubview(goButton)
        
    }
    
    
    /// Personalização da UI
    private func setupUI() {
        /*
         Aqui vão definidos as bordas, cor de fundo da view
         */
        // Define o tamanho que a célula vai ter
        // self.collectionFlow.itemSize = CGSize(width: 100, height: 100)
        
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
        // let lateral: CGFloat =
        // let between: CGFloat =
        
        NSLayoutConstraint.deactivate(self.dynamicConstraints)
        
        self.dynamicConstraints = [
            self.title1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            self.title1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.title1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.title1.heightAnchor.constraint(equalToConstant: 24),
            
            self.typeCollectionView.topAnchor.constraint(equalTo: title1.bottomAnchor, constant: 24),
            self.typeCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.typeCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.typeCollectionView.heightAnchor.constraint(equalToConstant: 97),
            
            self.title2.topAnchor.constraint(equalTo: typeCollectionView.bottomAnchor, constant: 36),
            self.title2.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.title2.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.title2.heightAnchor.constraint(equalToConstant: 24),
            
            self.ageCollectionView.topAnchor.constraint(equalTo: title2.bottomAnchor, constant: 8),
            self.ageCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.ageCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.ageCollectionView.heightAnchor.constraint(equalToConstant: 97),
            
            self.title3.topAnchor.constraint(equalTo: ageCollectionView.bottomAnchor, constant: 8),
            self.title3.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.title3.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.title3.heightAnchor.constraint(equalToConstant: 24),
            
            self.placeCollectionView.topAnchor.constraint(equalTo: title3.bottomAnchor, constant: 8),
            self.placeCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.placeCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.placeCollectionView.heightAnchor.constraint(equalToConstant: 97),
            
            self.goButton.topAnchor.constraint(equalTo: placeCollectionView.bottomAnchor, constant: 88),
            self.goButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 153),
            self.goButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.goButton.heightAnchor.constraint(equalToConstant: 44),
            
            
        ]
        
        
        NSLayoutConstraint.activate(self.dynamicConstraints)
    }
    
    @objc func cancelActionButton() {
        //your code here when click
    }
}


