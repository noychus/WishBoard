//
//  MyBoard.swift
//  WishBoard
//
//  Created by NOYCHUS on 16.11.2024.
//

import SwiftUI

struct MyBoard: View {
    private let titleName: String = "My board"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 32) {
                    title(titleName)
                    
                    HStack(alignment: .top, spacing: 8) {
                        myWishesCell("My Wishes", 15)
                            .padding(.leading, 8)
                        
                        VStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 8) {
                                    scrollCell("Xmas", 5)
                                    
                                    scrollCell("B-day",11)
                                    
                                    scrollCell("8 March",2)
                                    
                                    scrollCell("Other", 33)
                                }
                            }
                            .frame(height: 100, alignment: .leading)
                            
                            Spacer()
                            
                            friendsCell("Friends", 52, "person")
                                .padding(.trailing, 8)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 260)
                    
                    VStack(alignment: .leading) {
                        Image("switchJOYCON")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width - 16)
                        
                        Text("Switch Joy-Con")
                            .font(.Title.h6Semibold12)
                            .foregroundStyle(Color.Text.dark)
                            .padding()
                    }
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: Const.cellCornerRadius))
                    
                    Spacer()
                }
                .padding(.top, 48)
            }
        }
    }
    
    @ViewBuilder
    private func title(_ title: String) -> some View {
        HStack {
            Text(title)
                .font(.Title.h7Semibold30)
                .foregroundStyle(Color.Text.light)
            
            Spacer()
        }
        .padding(.horizontal)
    }
    
    @ViewBuilder
    private func myWishesCell(_ title: String, _ count: Int) -> some View {
        VStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.Title.h6Semibold12)
                    .foregroundStyle(Color.Text.dark)
                
                Spacer()
                
                Text("\(count)")
                    .font(.Title.h2Semibold21)
                    .foregroundStyle(Color.Text.dark)
            }
            .font(.Title.h6Semibold12)
            .foregroundStyle(Color.Text.dark)
            .padding()
        }
        .frame(width: UIScreen.main.bounds.width / 3 - 12, height: 260, alignment: .leading)
        .background(Color.Accent.rose)
        .clipShape(RoundedRectangle(cornerRadius: Const.cellCornerRadius))
    }
    
    @ViewBuilder
    private func friendsCell(_ title: String, _ count: Int, _ imageFriend: String) -> some View {
        VStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.Title.h6Semibold12)
                    .foregroundStyle(Color.Text.dark)
                
                Spacer()
                
                HStack(spacing: 0) {
                    Text("\(count)")
                        .font(.Title.h2Semibold21)
                        .foregroundStyle(Color.Text.dark)
                    
                    Spacer()
                    
                    ForEach(0..<5) {_ in
                        Image(systemName: imageFriend)
                    }
                }
            }
            .padding()
        }
        .frame(width: UIScreen.main.bounds.width / 3 * 2 - 12, height: 152, alignment: .leading)
        .background(Color.Accent.sulu)
        .clipShape(RoundedRectangle(cornerRadius: Const.cellCornerRadius))
    }
    
    @ViewBuilder
    private func scrollCell(_ title: String, _ count: Int) -> some View {
        VStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.Title.h6Semibold12)
                    .foregroundStyle(Color.Text.dark)
                
                Spacer()
                
                Text("\(count)")
                    .font(.Title.h2Semibold21)
                    .foregroundStyle(Color.Text.dark)
            }
            .padding()
        }
        .frame(width: 100, height: 100)
        .background(Color.flower)
        .clipShape(RoundedRectangle(cornerRadius: Const.cellCornerRadius))
    }
}

private enum Const {
    static let cellCornerRadius: CGFloat = 30
}

#Preview {
    MyBoard()
}
