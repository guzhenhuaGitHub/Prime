//
//  Integer+extension.swift
//  Prime
//
//  Created by 顾振华 on 2020/7/22.
//  Copyright © 2020 顾振华. All rights reserved.
//

import Foundation

extension Int {
    func gcd(_ value: Int) -> Int {
        switch self % value {
        case 0:             return value
        case let mod:       return value.gcd(mod)
        }
    }
    
    func divmod(_ divisor: Int) -> (quotient: Int, mod: Int) {
        let mod = self % divisor
        let quotient = (self - mod) / divisor
        return (quotient, mod)
    }
}
