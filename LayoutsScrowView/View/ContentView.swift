//
//  ContentView.swift
//  LayoutsScrowView
//
//  Created by Boris R on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var vm: ManegerViewModel
    @State private var plantsViewMode = PlantsModel.examples()
    
 
    
    let rows = Array(repeating: GridItem(.fixed(100), spacing: 0), count: 2)
    // visando deixa o código mais simples, foi criado uma constate que guarda as informações de tamanho do grid o espaçamento entre eles e estou usando uma Array com repeating para repetir as mesmos ajuste para abas as linha (grid)
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack(alignment: .leading, spacing: 0, pinnedViews: .sectionHeaders){
                    
//                MARK: Scrowview horizontal
                    ScrollView(.horizontal) {
                        LazyHStack{
                            ForEach(plantsViewMode) { mode in
                                PlantsCardView(plantViewMode: mode)
                            }
                        }
                        .padding(.vertical, 10)
                    }
                    .frame(height: 150)
                    .padding(.horizontal, 7)
                    
                    Spacer()
                    
//                MARK: Scrowview Grid
                    Section{
                        GridScrowViewSection()
                    } header: {
                        Text("Second Section")
                            .modifier(SectionHanderStyling())
                    }
                    
                    Spacer()
//                MARK: Scrowview List

                    Section{
                        ForEach(plantsViewMode) { mode in
                                PlantsRowView(plantsViewMode: mode)
                                    .padding([.horizontal, .vertical],7)
                        }
                        
                    } header: {
                        Text("Third Section")
                            .modifier(SectionHanderStyling())
                    }
                }
            }
            
            .navigationTitle("Flowers")
        }
        
    }
    
}
    

struct SectionHanderStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding(.horizontal)
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(.ultraThinMaterial)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
