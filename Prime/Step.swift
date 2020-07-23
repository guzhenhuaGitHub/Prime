//
//  Step.swift
//  Prime
//
//  Created by 顾振华 on 2020/7/22.
//  Copyright © 2020 顾振华. All rights reserved.
//

import Foundation

extension ClosedRange where Bound: Strideable {
    func step(by step: Bound.Stride) -> StrideThrough<Bound> {
        stride(from: lowerBound, through: upperBound, by: step)
    }
}
