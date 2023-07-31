//
//  GridScrowViewSection.swift
//  LayoutsScrowView
//
//  Created by Boris R on 31/07/23.
//

import SwiftUI

struct GridScrowViewSection: View {
    @State private var plantsViewMode = PlantsModel.examples()
    
    let rows = Array(repeating: GridItem(.fixed(100), spacing: 0), count: 2)
    // visando deixa o código mais simples, foi criado uma constate que guarda as informações de tamanho do grid o espaçamento entre eles e estou usando uma Array com repeating para repetir as mesmos ajuste para abas as linha (grid)

    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: rows, spacing: 0){
                ForEach(plantsViewMode) { mode in
                    PlantsSquare(plantViewMode: mode, size: 100, cornerRadius: 0)
                }
            }
        }
    }
}

struct GridScrowViewSection_Previews: PreviewProvider {
    static var previews: some View {
        GridScrowViewSection()
    }
}
