//
//  MyGreeterTest.swift
//  GreeterTests
//
//  Created by 徐丽然 on 2022/8/10.
//

import XCTest

class MyGreeterTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // 测试6时
    func test6am() throws {
        let greeter: String = configGreeter(hour: 6)
        assert(greeter == "Good morning", "6am is morning");
    }
    // 测试12时
    func test12pm() throws {
        let greeter: String = configGreeter(hour: 12)
        assert(greeter == "Good afternoon", "12pm is afternoon");
    }
    // 测试下午12时
    func test6pm() throws {
        let greeter: String = configGreeter(hour: 18)
        assert(greeter == "Good evening", "18pm is evening");
    }
    // 测试0时
    func test0am() throws {
        let greeter: String = configGreeter(hour: 0)
        assert(greeter == "Good evening", "0am is evening");
    }
    
    // 测试0-24之外的数字
    func testoutOfRangeTime() throws {
        let greeter: String = configGreeter(hour: 36)
        assert(greeter == "error", "time is error");
    }
    
    
    func configGreeter(hour: Int) -> String {

        switch hour {
        case 6..<12:
            return "Good morning"
        case 12..<18:
            return "Good afternoon"
        case 18...24,0...6:
            return "Good evening"
        default:
            return "error"
        }
        
    }

}
