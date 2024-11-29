//
//  MyBoard.swift
//  WishBoard
//
//  Created by NOYCHUS on 16.11.2024.
//

import SwiftUI
import UISystem

struct MyBoard: View {
    private let titleName: String = "My board"
    private var smallCategory: [(String, Int)] = [("Xmas", 5), ("B-day", 11), ("8March", 8), ("Other", 33)]
    private var cards: [(image: String, name: String, discription: String, price: Int)] = [(image: "eburet", name: "Eburet", discription: "Table", price: 280), (image: "switchJOYCON", name: "JoyCon", discription: "For nintendo switch", price: 149)]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 16) {
                    Title(titleName: titleName)
                    
                    HStack(alignment: .top, spacing: 8) {
                        VerticalCell(title: "My Wishes", count: 15, size: UIConstant.sizeVerticalCell)
                        
                        VStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 8) {
                                    AddCategoryButton(size: UIConstant.sizeSmallCell)
                                    
                                    ForEach(smallCategory, id: \.0) { category in
                                        SmallCell(title: category.0, count: category.1, size: UIConstant.sizeSmallCell)
                                    }
                                }
                            }
                            
                            Spacer()
                            
                            HorizontalCell(title: "Friends", count: 52, image: "person", size: UIConstant.sizeHorizontalCell)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 260)
                    
                    ForEach(cards, id: \.name) { card in
                        WishCard(image: card.image, name: card.name, discription: card.discription, price: card.price)
                    }
                    
                    Spacer()
                }
                .padding(.top, 48)
            }
        }
    }
}

#Preview {
    MyBoard()
}
