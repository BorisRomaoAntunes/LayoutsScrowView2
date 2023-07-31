//
//  DetailView.swift
//  LayoutsScrowView
//
//  Created by Boris R on 31/07/23.
//

import SwiftUI

struct DetailView: View {
    let detailView: PlantsModel
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView{
            VStack {
                ZStack{
                    imageBottonDetailView
                    titleDetailView
                    
                }
                Text(detailView.description)
                    .font(.subheadline)
                    .padding()
            }
//            .overlay(buttonBack, alignment: .topLeading)
        }
        .ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detailView: PlantsModel.example1())
    }
}

extension DetailView {
    
    private var imageBottonDetailView: some View{
        Image(detailView.imageName)
            .resizable()
            .scaledToFill()
            .clipped()
            .frame(maxHeight:  .infinity)
            .overlay(content: {
                LinearGradient(colors: [
                    .clear,
                    .clear,
                    .clear,
                    .clear,
                    .clear,
                    .clear,
                    colorScheme == .dark ? .black.opacity(0.1) : .white.opacity(0.1),
                    colorScheme == .dark ? .black.opacity(0.2) : .white.opacity(0.2),
                    colorScheme == .dark ? .black.opacity(0.5) : .white.opacity(0.5),
                    colorScheme == .dark ? .black.opacity(0.7) : .white.opacity(0.7),
                    colorScheme == .dark ? .black.opacity(0.9) : .white.opacity(0.9),
                    colorScheme == .dark ? .black : .white
                    
                ], startPoint: .top, endPoint: .bottom)
            })
        
        
    }
    
    private var titleDetailView: some View{
        Text(detailView.name)
            .font(.system(size: 40)).bold()
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity ,
                   alignment: .bottomLeading)
            .foregroundColor(colorScheme == .dark ? .white : .black)
            .padding(.horizontal)
    }
    
    private var buttonBack: some View{
        Button{
//            vm.sheetLocation = nil
        }label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .clipShape(Circle())
                .padding()
                
        }
        .contentShape(Circle())
        .shadow(color: .black.opacity(0.9),radius: 10, y: 2)
//        .offset(x: 5, y: 30)
        .position(x: 50, y: 60)
        
    }
}
