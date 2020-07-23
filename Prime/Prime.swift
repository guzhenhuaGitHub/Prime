//
//  Prime.swift
//  Prime
//
//  Created by 顾振华 on 2020/7/22.
//  Copyright © 2020 顾振华. All rights reserved.
//

import Foundation

struct Prime {
    func check(_ value: Int) -> Bool {
        switch value {
        case ...3:
            return value >= 2
        case 5:
            return true
        case let value where 30.gcd(value) != 1:
            return false
        case ..<49:
            return true
        default:
            for p in (7...Int(floor(sqrt(Double(value))))).step(by: 2) {
                if value % (p)      == 0 || value % (p +  4) == 0 ||
                   value % (p +  6) == 0 || value % (p + 10) == 0 ||
                   value % (p + 12) == 0 || value % (p + 16) == 0 ||
                   value % (p + 22) == 0 || value % (p + 24) == 0 {
                    return false
                }
            }
        }
        return true
    }
}

public func isPrime(_ value: Int) -> Bool {
    let prime = Prime()
    return prime.check(value)
}
