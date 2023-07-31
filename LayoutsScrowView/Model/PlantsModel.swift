//
//  PlantasMode.swift
//  LayoutsScrowView
//
//  Created by Boris R on 31/07/23.
//

import Foundation

struct PlantsModel: Identifiable{
    
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    
    static func examples() -> [PlantsModel]{
    [
        PlantsModel(
        name: "Rosa",
        description: "A rosa é uma flor conhecida por sua beleza e fragrância. Ela possui diversas cores e é frequentemente utilizada para representar o amor e a paixão.",
        imageName: "rosa"
      ),
        PlantsModel(
        name: "Samambaia",
        description: "A samambaia é uma planta de folhagem exuberante e delicada. Ela é comumente usada como planta ornamental em ambientes internos e externos.",
        imageName: "samambaia"
      ),
        PlantsModel(
        name: "Girassol",
        description: "O girassol é uma planta impressionante com flores grandes e amarelas. Ela é conhecida por seguir o movimento do sol durante o dia.",
        imageName: "girassol"
      ),
        PlantsModel(
        name: "Orquídea",
        description: "A orquídea é uma flor exótica e sofisticada. Ela possui uma variedade de cores e formas, sendo bastante apreciada como planta decorativa.",
        imageName: "orquidea"
      ),
        PlantsModel(
        name: "Violeta",
        description: "A violeta é uma pequena flor que pode apresentar diversas cores, como violeta, azul e branca. Ela é frequentemente cultivada como planta de interior.",
        imageName: "violeta"
      ),
        PlantsModel(
        name: "Lírio",
        description: "O lírio é uma flor elegante e perfumada. Ele tem pétalas longas e é conhecido por simbolizar a pureza e a renovação.",
        imageName: "lirio"
      ),
        PlantsModel(
        name: "Hortênsia",
        description: "A hortênsia é uma planta ornamental com flores em forma de pompons que podem variar de cor conforme a acidez do solo em que crescem.",
    imageName: "hortensia"
      ),
        PlantsModel(
        name: "Tulipa",
        description: "A tulipa é uma flor simbólica da Holanda e é conhecida por suas flores em forma de taça em várias cores brilhantes.",
        imageName: "tulipa"
      ),
        PlantsModel(
        name: "Suculenta",
        description: "A suculenta é uma planta que armazena água em suas folhas, tornando-a resistente à seca. Ela é uma escolha popular para decoração de interiores.",
        imageName: "suculenta"
      ),
        PlantsModel(
        name: "Jasmim",
        description: "O jasmim é uma planta com flores brancas perfumadas que são usadas na fabricação de perfume e chá. Ele simboliza beleza e amor.",
        imageName: "jasmim"
      ),
        PlantsModel(
        name: "Cravo",
        description: "O cravo é uma flor com pétalas recortadas e cores vibrantes, como vermelho, rosa e branco. Ele é usado em buquês e como tempero.",
        imageName: "cravo"
      )
    ]
}
    
    static func example1() -> PlantsModel {
        PlantsModel(
          name: "Cravo",
          description: "O cravo é uma flor com pétalas recortadas e cores vibrantes, como vermelho, rosa e branco. Ele é usado em buquês e como tempero.",
          imageName: "cravo"
        )
    }
    static func example2() -> PlantsModel {
        PlantsModel(
            name: "Rosa",
            description: "A rosa é uma flor conhecida por sua beleza e fragrância. Ela possui diversas cores e é frequentemente utilizada para representar o amor e a paixão.",
            imageName: "rosa"
        )
    }
}

