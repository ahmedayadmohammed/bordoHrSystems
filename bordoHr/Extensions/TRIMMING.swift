//
//  TRIMMING.swift
//  CleanerApp
//
//  Created by Ahmed Ayad on 8/5/19.
//  Copyright © 2019 ahmed ayad. All rights reserved.
//

import Foundation
extension String
{
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
    }
}
