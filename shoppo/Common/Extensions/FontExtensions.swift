//
//  FontExtensions.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//

import SwiftUI

enum TittleSize: CGFloat {
 
    case largeTitle = 35
    case title = 28
    case normal = 19
}


extension Font {
    
    static func titleFont(size: TittleSize) -> Font {
        .custom("Raleway-ExtraBold", size: size.rawValue)
    }
    

    
    
}
