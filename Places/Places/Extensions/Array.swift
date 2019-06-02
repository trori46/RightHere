//
//  Array.swift
//  Places
//
//  Created by Victoriia Rohozhyna on 12/6/17.
//  Copyright © 2017 Victoriia Rohozhyna. All rights reserved.
//

import Foundation

extension Array {
    subscript (safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}
