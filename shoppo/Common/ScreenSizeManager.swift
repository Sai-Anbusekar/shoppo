//
//  Untitled.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//

import UIKit

final class ScreenSizeManager {
    static let shared = ScreenSizeManager()

    private init() {}

    var width: CGFloat {
        UIScreen.main.bounds.width
    }

    var height: CGFloat {
        UIScreen.main.bounds.height
    }
}
