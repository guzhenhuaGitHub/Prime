//
// Created by 顾振华 on 2020/7/22.
// Copyright (c) 2020 顾振华. All rights reserved.
//

import Foundation

// Generates all integers which are greater than 2 and
// are not divisible by either 2 or 3.
//
// This is a pseudo-prime generator, suitable on
// checking primality of an integer by brute force
// method.
struct Generator23 {
    
    private var prime = 1
    private var step: Int?

    mutating func initialize() {
        prime = 1
        step = nil
    }

    init() { initialize() }
    mutating func rewind() { initialize() }
}

extension Generator23: IteratorProtocol {
    mutating func next() -> Int? {
        if let step = step {
            prime += step
            self.step = 6 - step
        } else {
            switch prime {
            case 1: prime = 2
            case 2: prime = 3
            case 3: prime = 5; step = 2
            default: break
            }
        }
        return prime
    }
}

extension Generator23: Sequence {
    
    private func makeIterator() -> some IteratorProtocol { self }
    
}
