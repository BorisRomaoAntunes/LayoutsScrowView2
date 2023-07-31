//
//  PlantsCardView.swift
//  LayoutsScrowView
//
//  Created by Boris R on 31/07/23.
//

import SwiftUI

struct PlantsCardView: View {
    let plantViewMode: PlantsModel
    let padding: CGFloat = 10
    
    var body: some View {
        NavigationLink(destination: DetailView(detailView: plantViewMode)) {
            Image(plantViewMode.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .shadow(radius: 5)
                .overlay(alignment: .bottomTrailing) {
                    Text(plantViewMode.name)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                }
        }
    }
}

struct PlantsCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlantsCardView(plantViewMode: PlantsModel.example2())
            .padding()
    }
}
