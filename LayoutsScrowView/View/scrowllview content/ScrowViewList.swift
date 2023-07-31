//
//  ScrowViewList.swift
//  LayoutsScrowView
//
//  Created by Boris R on 31/07/23.
//

import SwiftUI

struct ScrowViewList: View {
    @State private var plantListViewModel = PlantsModel.examples()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(plantListViewModel) { listplant in
                    PlantsRowView(plantsViewMode: listplant)
                }
                .listRowSeparator(.hidden) // esconde os separados das linhas
                .listRowInsets( .init(top: 10,
                                      leading: 10,
                                      bottom: 0,
                                      trailing: 10)) //  controlando o paddind de cada célula de cima, esquema, baixo e direita
            }
            .listStyle(.plain)
            .navigationTitle("Flowers in List")
        }
    }
}

struct ScrowViewList_Previews: PreviewProvider {
    static var previews: some View {
        ScrowViewList()
    }
}
