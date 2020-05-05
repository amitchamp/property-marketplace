//
//  Array+Extension.swift
//  FindProperty
//
//  Created by Amit on 08/04/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
