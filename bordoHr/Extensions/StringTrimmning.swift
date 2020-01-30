//
//  StringTrimmning.swift
//  CleanerApp
//
//  Created by Ahmed Ayad on 10/2/19.
//  Copyright © 2019 ahmed ayad. All rights reserved.
//

import Foundation
extension StringProtocol where Self: RangeReplaceableCollection {
    var removingAllWhitespacesAndNewlines: Self {
        return filter { !$0.isNewline && !$0.isWhitespace }
    }
    mutating func removeAllWhitespacesAndNewlines() {
        removeAll { $0.isNewline || $0.isWhitespace }
    }
}
