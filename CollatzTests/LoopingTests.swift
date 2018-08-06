//
//  LoopingTests.swift
//  CollatzTests
//
//  Created by Hanson Wen on 4/8/2018.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class LoopingTests: XCTestCase {
    
    /*
 
     1234567
     1234567
     1234567
     
    */
    func testLoop() {
        var i = 1
        while i != 8 {
            print(i, terminator: "")
            i += 1
        }
        print("")
    }
    
    func testLoop2() {
        print("dddddd")
        for i in 1...15 {
//            print(i, terminator: "")
            print("________________\(i * i)")
        }
        print("")
    }
    
    /*
 
     1234567
     234567
     34567
     4567
     567
     67
     7
     
     1
     12
     123
     1234
     12345
     123456
     1234567
     
     The Basel Problem
     https://youtu.be/fEWj93XjON0?t=999
     William Dunham talking about Euler
     
     1 + 1/4 + 1/9 + 1/16 + ... + 1/(k*k) + ... = pi*pi/6
     
    */
    func testPiCalculator() {
        let k = 999999999
        var anwser: Double = 0
        for i in 1...k {
            anwser += 1 / Double(i * i)
            
        }
        print(sqrt(anwser * 6))
    }
    func testLoop3() {
        for _ in 1...3 {
            var i = 1
            while i != 8 {
                print(i, terminator: "")
                i += 1
            }
            print("")
        }
    }

    /*
    1234567
    234567
    34567
    4567
    567
    67
    7
    */
    func testLoop4() {
        for g in 1...7 {
            for i in g...7 {
                print(i, terminator: "")
            }
            print("")
        }
    }
    
    /*
    1
    12
    123
    1234
    12345
    123456
    1234567
    */
    func testLoop5() {
        for g in 1...7 {
            for i in 1...g {
                print(i, terminator: "")
            }
            print("")
        }
    }
}
