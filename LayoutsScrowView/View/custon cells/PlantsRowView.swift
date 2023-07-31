//
//  PlantsRowView.swift
//  LayoutsScrowView
//
//  Created by Boris R on 31/07/23.
//

import SwiftUI

struct PlantsRowView: View {
    @EnvironmentObject private var vm: ManegerViewModel
    let plantsViewMode: PlantsModel
    
    var body: some View {
        NavigationLink(destination: DetailView(detailView: plantsViewMode)) {
            HStack(alignment: .top, spacing: 10){
                Image(plantsViewMode.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                
                VStack(alignment: .listRowSeparatorLeading,spacing: 5){
                    Text(plantsViewMode.name)
                        .bold()
                        .foregroundColor(.accentColor)
                    
                    Text(plantsViewMode.description)
                        .font(.callout)
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.leading)
                }
            }
                .padding(.trailing, 10)
                .padding(.vertical, 5)
            }

        .frame(height: 100, alignment: .leading)
        }
    
    }
    

struct PlantsRowView_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            
            PlantsRowView(plantsViewMode: PlantsModel.example1())
            PlantsRowView(plantsViewMode: PlantsModel.example2())
        }
        .padding()
    }
}
