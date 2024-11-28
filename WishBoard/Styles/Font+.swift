//
//  Font+.swift
//  WishBoard
//
//  Created by NOYCHUS on 16.11.2024.
//

import Foundation
import SwiftUI

extension Font {
    enum Title {
        static let h1Bold25 = Font.custom("FONTSPRINGDEMO-RocGroteskExtraWideExtraBoldRegular", size: 25)
        static let h2Semibold21 = Font.custom("FONTSPRINGDEMO-RocGroteskExtraWideMediumRegular", size: 21)
        static let h3Regular21 = Font.custom("FONTSPRINGDEMO-RocGroteskExtraWideRegular", size: 21)
        static let h4Bold17 = Font.custom("FONTSPRINGDEMO-RocGroteskExtraWideExtraBoldRegular", size: 17)
        static let h5Semibold17 = Font.custom("FONTSPRINGDEMO-RocGroteskExtraWideMediumRegular", size: 17)
        static let h6Semibold12 = Font.custom("FONTSPRINGDEMO-RocGroteskExtraWideMediumRegular", size: 12)
        static let h7Semibold30 = Font.custom("FONTSPRINGDEMO-RocGroteskExtraWideMediumRegular", size: 30)
    }
    
    enum Text {
        static let large24 = Font.system(size: 24, weight: .bold, design: .rounded)
        static let medium24 = Font.system(size: 24, weight: .medium, design: .rounded)
        static let regular16 = Font.system(size: 16, weight: .regular, design: .rounded)
        static let small = Font.system(size: 15, weight: .semibold, design: .rounded)
        static let xsmall = Font.system(size: 15, weight: .regular, design: .rounded)
        static let xxsmall = Font.system(size: 11, weight: .medium, design: .rounded)
        static let xxxsmall = Font.system(size: 10, weight: .bold, design: .rounded)
    }
}
