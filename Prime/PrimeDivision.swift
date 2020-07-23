//
//  PrimeDivision.swift
//  Prime
//
//  Created by 顾振华 on 2020/7/22.
//  Copyright © 2020 顾振华. All rights reserved.
//

import Foundation

struct PrimeDivision {

    func factorize(_ value: Int, generator: Generator23 = .init()) throws -> [Int: Int] {
        if value == 0 {
            throw Error.zeroDivision
        }

        var value = value
        var primeDivisor: [Int: Int] = [:]

        if value < 0 {
            value = -value
            primeDivisor[-1] = 1
        }

        for prime in generator {
            
            var count = -1
            var value1 = value
            var mod = 0
            
            repeat {
                value = value1
                count += 1
                (value1, mod) = value.divmod(prime)
            } while mod == 0

            if count != 0 {
                primeDivisor[prime] = count
            }

            if value <= prime { break }
        }

        if value > 1 {
            primeDivisor[value] = 1
        }
        return primeDivisor
    }
}

extension PrimeDivision {
    enum Error: String, Swift.Error {
        case zeroDivision = "ZeroDivisionError: divided by 0"
    }
}

extension PrimeDivision.Error: LocalizedError {
    var errorDescription: String? { rawValue }
}
