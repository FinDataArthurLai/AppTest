//
//  AppTestTests.swift
//  AppTestTests
//
//  Created by 吳天元 on 5/20/16.
//  Copyright © 2016 吳天元. All rights reserved.
//

import SwiftyJSON
import XCTest
@testable import AppTest

class AppTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let bundle = NSBundle(forClass: AppTestTests.self)
        guard let path = bundle.pathForResource("test_places", ofType: "geojson") else {
            XCTAssertTrue(false)
            return
        }
        guard let data = NSData(contentsOfFile: path) else {
            XCTAssertTrue(false)
            return
        }
        
        let json = JSON(data: data)
        XCTAssertEqual(json["type"].string, "FeatureCollection")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
