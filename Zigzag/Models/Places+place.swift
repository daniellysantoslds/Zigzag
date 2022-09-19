//
//  Places+place.swift
//  Zigzag
//
//  Created by Isabela Batista on 14/09/22.
//

import Foundation

extension Places {
    
    static func place() -> [Places] {
        return [
            Places (type: "Comer",
                    place: "McDonald's Piedade",
                    address: "Av. Bernardo Vieira de Melo, 1541 - Piedade, Jaboatão dos Guararapes - PE, 54410-010",
                    age: "5–14 anos",
                    description: "Rede de fast-food tradicional conhecida por ter ótimos hambúrgueres e batatas fritas.",
                    information: "Área Infantil, Menu infantil ",
                    notIncluded: "Banheiro família, Recreadores",
                    image: "McDonald-image"),
            
            Places(type: "Comer",
                   place: "Coco Bambu Shopping Recife",
                   address: "Rua Padre Carapuceiro, 777 Shopping Recife, Recife, Pernambuco 51020-900 Brasil",
                   age: "5–14 anos",
                   description: "Considerado o maior e melhor restaurante do Brasil, com especialidade em frutos do mar, o Coco Bambu possui um amplo e variado cardápio, com comidas e bebidas deliciosamente diferenciadas, feitas com ingredientes frescos da mais alta qualidade. Os pratos são bem servidos e toda essa excelência é apresentada a preços acessíveis.Nossas unidades são amplas, possuem decoração rústica e elegante, oferecendo aos nossos clientes um ambiente sofisticado e aconchegante.",
                   information: "Menu Infantil, Recreadores, Área Infantil, Trocador",
                   notIncluded: "Recreadores",
                   image: "Coco-image"),
            
            Places(type: "Comer",
                   place: "Massarela Grill",
                   address: "Av. Caxangá, 2811 - Iputinga, Recife - PE, 50670-000",
                   age: "Todas as idades",
                   description: "Na Massarela, além de encontrar cortes de carnes únicos com um sabor sem igual, um buffet completo para todos os gostos e um espaço ideal para reunir a família e os amigos, você também encontra um atendimento de primeira.",
                   information: "Área Infantil",
                   notIncluded: "Banheiro família, Recreadores",
                   image: "Massarela-image"),
            
            Places(type: "Lazer",
                   place: "Mirabilandia",
                   address: "Av. Prof. Andrade Bezerra, 1285 - Salgadinho, 53110-110",
                   age: "Todas as idades",
                   description: "Com o slogan Aventura, Magia e Emoção, o Mirabilandia tem como objetivo proporcionar aos seus visitantes um dia inesquecível, onde crianças e adultos poderão se divertir juntos. Os nossos anfitriões Mike e Otto estarão esperando por vocês aqui, na terra das maravilhas.",
                   information: "Local seguro, Brinquedos infantis, praça de alimentação ",
                   notIncluded: "Banheiro família, recreadores",
                   image: "Mirabilandia-image"),
            
            Places(type: "Lazer",
                   place: "Veneza Waterpark",
                   address: "Av. Dr. Cláudio José Gueiros Leite, 10.050 - Maria Farinha, Paulista - PE, 53427-085",
                   age: "5-14 anos",
                   description: "Localizado no litoral norte de Pernambuco é sinônimo de diversão e alegria numa área de 90.000m², onde estão distribuídas mais de trinta atrações como Toboáguas, Piscina com Ondas artificiais, Rio lento, playgrounds infantis, tirolesa e muito mais.",
                   information: "Local seguro, Brinquedos infantis, praça de alimentação , recreação",
                   notIncluded: "Banheiro com trocador",
                   image: "Veneza-image"),
            
            Places(type: "Lazer",
                   place: "Game station",
                   address: "Rua Dr. João Santos Filho, 255 Parnamirim, Casa Forte Recife - PE, Loja 318, Piso L5",
                   age: "Todas as idades",
                   description: "Os parques de diversões Game Station são os mais modernos na sua categoria: Parques Compactos. Com a mesma identidade visual, padronização nas operações e áreas em torno de 1000 m2, apresentam o que há de mais moderno em lazer e entretenimento em parques compactos. O Game Station é referência de diversão entre adultos, adolescente e crianças.",
                   information: "Local seguro, Brinquedos infantis, Banheiro com trocador (shopping)",
                   notIncluded: "Recreadores",
                   image: "Game-image"),
            
            Places(type: "Lazer",
                   place: "Espaco ciência",
                   address: "Complexo de Salgadinho, Olinda, Parque Memorial Arcoverde, Parque 2, sem número, CEP.: 53020-560, Pernambuco, Brasil",
                   age: "5-14 anos",
                   description: "Popularizar a ciência e apoiar o ensino são os objetivos centrais do ESPAÇO CIÊNCIA, uma instituição permanente, sem fins lucrativos, aberta ao público, a serviço da sociedade e do seu desenvolvimento. Combina exposições montadas em ambientes fechados com centenas de experimentos interativos a céu aberto. Possui também Planetário, Auditório, Anfiteatro, Hall de Exposições e Centro Educacional, além de um Manguezal de rara beleza e interesse científico, para contemplação, estudos e aprendizagens.",
                   information: "Local seguro, visitas guiadas",
                   notIncluded: "Banheiro com trocador, Praça de alimentação ",
                   image: "Espaco-image"),
            
            Places(type: "Hospedagem",
                   place: "Recife Praia Hotel",
                   address: "Av. Boa Viagem 09, Recife",
                   age: "0-2 anos",
                   description: "Com localização privilegiada, na Avenida Boa Viagem, e em frente à Praia do Pina, o Recife Praia Hotel oferece vista panorâmica do mar, piscina, restaurante e 2 bares. Os quartos incluem ar-condicionado e Wi-Fi gratuito (até 600 Kbps). Os quartos amplos e modernos do Recife Praia Hotel são bem iluminados e contam com piso frio, TV a cabo, telefone, rádio, cofre e frigobar. Alguns oferecem uma bela vista do mar.",
                   information: "Local seguro,Parquinho,Banheiro com trocador",
                   notIncluded: "Recreacao infantil",
                   image: "Espaco-image"),
            
            Places(type: "Hospedagem",
                   place: "Grand Mercure Recife Boa Viagem",
                   address: "Av. Boa Viagem, 4070, Boa Viagem,Recife",
                   age: "0-6 anos",
                   description: "Você se qualifica para um desconto Genius em Grand Mercure Recife Boa Viagem! Para economizar nessa acomodação, basta fazer o login ou se cadastrar. Situado bem em frente à famosa Praia de Boa Viagem, a uma curta caminhada de diversas opções de compras e entretenimento, o Grand Mercure Recife Boa Viagem dispõe de uma piscina ao ar livre. Para sua comodidade, o Wi-Fi gratuito em todas as áreas e um estacionamento privativo estão disponíveis.",
                   information: "Local seguro, cozinha individual",
                   notIncluded: "Recreacao infantil",
                   image: "Grand-image"),
            
            Places(type: "Hospedagem",
                   place: "Radisson Recife",
                   address: "Av Boa Viagem 1906, Boa Viagem, Recife",
                   age: "0-2 anos",
                   description: "Situado à beira-mar, o Radisson Recife oferece piscina, academia e sauna, na área mais elegante de Boa Viagem. A propriedade dispõe de acomodações espaçosas, com Wi-Fi gratuito e varandas privativas com vista do mar. Todos os quartos do Radisson Recife incluem ar-condicionado, TV de tela plana com canais a cabo, secador de cabelo, cofre e frigobar.",
                   information: "Local seguro, cozinha individual,Area infantil",
                   notIncluded: "Cardapio infantil",
                   image: "Radisson-image"),
            
            Places(type: "Hospedagem",
                   place: "Ibis Recife Boa Viagem",
                   address: "Av. Domingos Ferreira 683 Boa Viagem,Recife",
                   age: "0-4 anos",
                   description: "A poucos passos da Praia do Pina, o ibis Recife Boa Viagem oferece acomodações 3 estrelas e um restaurante em Recife. O hotel tem um bar e quartos com ar-condicionado, Wi-Fi gratuito e banheiro privativo. A propriedade está localizada a 4,6 km da Praça da Boa Viagem. Todas as unidades do ibis Recife Boa Viagem dispõem de TV de tela plana com canais a cabo e streaming, guarda-roupa, isolamento acústico e cortinas blackout.",
                   information: "Local seguro,area infantil",
                   notIncluded: "Recreacao infantil",
                   image: "Ibis-image"),
        
        
        ] //<-- Fim do return
    }
    
}
