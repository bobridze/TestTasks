//
//  PerformanceUITest.swift
//  TasksUITests
//
//  Created by Volodymyr Zavodin on 04.03.2023.
//  Copyright © 2023 Cultured Code. All rights reserved.
//

import XCTest

class PerformanceUITests: XCTestCase {
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        //
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testGeneralTasksPerformance() {
        let metrics: [XCTMetric] = [XCTMemoryMetric(), XCTStorageMetric(), XCTClockMetric()]
        
        let measureOptions = XCTMeasureOptions.default
        measureOptions.iterationCount = 3
        
        //measure(metrics: metrics, options: measureOptions){
        //    do {
        //        try LoginTests().testLoginWithoutCredentials()
        //   } catch {
        //        print(error)}
        //}
    }
}
