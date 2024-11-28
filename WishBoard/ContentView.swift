//
//  ContentView.swift
//  WishBoard
//
//  Created by NOYCHUS on 16.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MyBoard()
    }
    
    init() {
        for familyName in UIFont.familyNames {
                print("Family: \(familyName)")
                for fontName in UIFont.fontNames(forFamilyName: familyName) {
                    print("   Font: \(fontName)")
                }
            }
    }
}

#Preview {
    ContentView()
}
