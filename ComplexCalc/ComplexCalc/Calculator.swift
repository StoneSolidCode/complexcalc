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
    
    //, lhs: (Int,Int) = (0,0), rhs: (Int,Int) = (0,0)
    func add(_ all: [Int] = [0], lhs: Int = 0, rhs: Int = 0) -> Int {
        return Int(lhs + rhs) + all.reduce(0, +)
    }
    func add(lhs: (Int,Int), rhs: (Int,Int)) -> (Int,Int) {
        let total1 = lhs.0 + rhs.0
        let total2 = lhs.1 + rhs.1
        return (total1, total2)
    }
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let total1 = Int(lhs["x"]!) + Int(rhs["x"]!)
        let total2 = Int(lhs["y"]!) + Int(rhs["y"]!)
        var result = [String: Int]()
        result["x"] = total1
        result["y"] = total2
        return result
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int{
        return Int(lhs - rhs)
    }
    func subtract(lhs: (Int,Int), rhs: (Int,Int)) -> (Int,Int) {
        let total1 = lhs.0 - rhs.0
        let total2 = lhs.1 - rhs.1
        return (total1, total2)
    }
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let total1 = Int(lhs["x"]!) - Int(rhs["x"]!)
        let total2 = Int(lhs["y"]!) - Int(rhs["y"]!)
        var result = [String: Int]()
        result["x"] = total1
        result["y"] = total2
        return result
    }
    
    func multiply(_ all: [Int] = [0], lhs: Int = 0, rhs: Int = 0) -> Int {
        return Int(lhs * rhs) + all.reduce(1, *)
    }
    func divide(lhs: Int, rhs: Int) -> Int {
        return Int(lhs / rhs)
    }
    
    func mathOp(lhs: Int = 0, rhs: Int = 0, args: [Int] = [0], beg: Int = 0,
                    op : (Int, Int) -> Int) -> Int {
        var total = beg
        for arg in args {
            total = op(total, arg)
        }
        return op(lhs, rhs) + total
    }
    func count(_ args: [Int]) -> Int {
        return args.count
    }
    func avg(_ args: [Int]) -> Int {
        var total = 0
        if args.count > 0 {
            for i in 0...(args.count - 1) {
                total += args[i]
            }
            total = total / args.count
        }
        return total
    }
    
    init() {
    }
}
