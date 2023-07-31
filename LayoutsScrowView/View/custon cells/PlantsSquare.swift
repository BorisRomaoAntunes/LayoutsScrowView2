//
//  PlantsSquare.swift
//  LayoutsScrowView
//
//  Created by Boris R on 31/07/23.
//

import SwiftUI

struct PlantsSquare: View {
    let plantViewMode: PlantsModel
    let size: CGFloat
    let cornerRadius: CGFloat
    
    var body: some View {
        NavigationLink(destination: DetailView(detailView: plantViewMode)) {
            Image(plantViewMode.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .shadow(radius: 5)
        }
    }
}

struct PlantsSquare_Previews: PreviewProvider {
    static var previews: some View {
        PlantsSquare(plantViewMode: PlantsModel.example1(),
                     size: 300,
                     cornerRadius: 15
        )
    }
}
