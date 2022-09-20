import UIKit

class BuscarView: UIView {
    
    /* MARK: - Atributos */
    
    public let typeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .yellow
        
        return collection
    }()
    
    public let ageCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .yellow
        
        return collection
    }()
    
    public let placeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .yellow
        
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
        label.backgroundColor = .cyan
        label.font = UIFont.boldSystemFont(ofSize: 20)
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
        label.backgroundColor = .cyan
        label.font = UIFont.boldSystemFont(ofSize: 20)
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
        label.backgroundColor = .cyan
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    // Views
    

    
    // Outros
    
    /// Constraints que vão mudar de acordo com o tamanho da tela
    private var dynamicConstraints: [NSLayoutConstraint] = []
    
    /// Configurações do layout da collection
    private let collectionFlow: UICollectionViewFlowLayout = {
        let cvFlow = UICollectionViewFlowLayout()
        cvFlow.scrollDirection = .horizontal
     
        
        return cvFlow
    }()
    
    private let secondCollectionFlow: UICollectionViewFlowLayout = {
        let cvFlow = UICollectionViewFlowLayout()
        cvFlow.scrollDirection = .horizontal
     
        
        return cvFlow
    }()
    
    private let thirdCollectionFlow: UICollectionViewFlowLayout = {
        let cvFlow = UICollectionViewFlowLayout()
        cvFlow.scrollDirection = .horizontal
     
        
        return cvFlow
    }()
    
    
    
    /* MARK: - Construtor */
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .systemBackground //AQUI A COR DO FUNDO
        self.setupViews()
        self.registerCell()
        self.setupCollectionFlow()
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
        self.ageCollectionView.register(TypeCollectionViewCell.self, forCellWithReuseIdentifier: TypeCollectionViewCell.identifier)
        self.placeCollectionView.register(TypeCollectionViewCell.self, forCellWithReuseIdentifier: TypeCollectionViewCell.identifier)
        
    }
    

    
    
    /// Define o layout da collection
    private func setupCollectionFlow() {
        self.typeCollectionView.collectionViewLayout = self.collectionFlow
        self.ageCollectionView.collectionViewLayout = self.secondCollectionFlow
        self.placeCollectionView.collectionViewLayout = self.thirdCollectionFlow

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
      
    
        


        
    }
    
    /// Personalização da UI
    private func setupUI() {
        /*
         Aqui vão definidos as bordas, cor de fundo da view
         */
        // Define o tamanho que a célula vai ter
        // self.collectionFlow.itemSize = CGSize(width: 100, height: 100)
        
        self.collectionFlow.itemSize = CGSize(width: 103.67, height: 93)
        self.collectionFlow.minimumLineSpacing = 32 //Foi só pra centralizar
        
        self.secondCollectionFlow.itemSize = CGSize(width: 94, height: 44)
        self.secondCollectionFlow.minimumLineSpacing = 8
        
        self.thirdCollectionFlow.itemSize = CGSize(width: 94, height: 44)
        self.thirdCollectionFlow.minimumLineSpacing = 8
        
        
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
            self.title1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 44),
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
            
            self.ageCollectionView.topAnchor.constraint(equalTo: title2.bottomAnchor, constant: 24),
            self.ageCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.ageCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.ageCollectionView.heightAnchor.constraint(equalToConstant: 97),
            
            self.title3.topAnchor.constraint(equalTo: ageCollectionView.bottomAnchor, constant: 36),
            self.title3.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.title3.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.title3.heightAnchor.constraint(equalToConstant: 24),
            
            self.placeCollectionView.topAnchor.constraint(equalTo: title3.bottomAnchor, constant: 36),
            self.placeCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.placeCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.placeCollectionView.heightAnchor.constraint(equalToConstant: 97),
            
            
        ]
        
        
        NSLayoutConstraint.activate(self.dynamicConstraints)
    }
}


