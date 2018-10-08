//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    
    func add(_ all: [Int] = [0], lhs: Int = 0, rhs: Int = 0) -> Int {
        return Int(lhs + rhs) + all.reduce(0, +)
    }
    func subtract(lhs: Int, rhs: Int) -> Int{
        return Int(lhs - rhs)
    }
    func multiply(_ all: [Int] = [0], lhs: Int = 0, rhs: Int = 0) -> Int {
        return Int(lhs * rhs) + all.reduce(1, *)
    }
    func divide(lhs: Int, rhs: Int) -> Int {
        return Int(lhs / rhs)
    }
    func mathOp(lhs: Int = 0, rhs: Int = 0, args: [Int] = [0], beg: Int = 0,
                    op : (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    
    init() {
    }
}
