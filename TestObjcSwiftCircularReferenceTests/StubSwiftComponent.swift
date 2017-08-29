//
//  StubSwiftComponent.swift
//  TestObjcSwiftCircularReference
//
//  Created by Mattia Campolese on 24/08/2017.
//  Copyright © 2017 Easyfuture LTD. All rights reserved.
//

import Foundation
@testable import TestObjcSwiftCircularReference

@objc
class StubSwiftComponent: NSObject, ComponentProtocol {
    
    func testFunction() -> Int {
        return 42
    }
    
}
