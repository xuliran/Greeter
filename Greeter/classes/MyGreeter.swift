//
//  MyGreeter.swift
//  Greeter
//
//  Created by 徐丽然 on 2022/8/10.
//

import UIKit

class MyGreeterClient: NSObject {
    static func configGreeter(hour: Int) -> String {

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
