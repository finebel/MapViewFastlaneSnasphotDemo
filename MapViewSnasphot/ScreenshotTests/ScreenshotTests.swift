//
//  ScreenshotTests.swift
//  ScreenshotTests
//
//  Created by Finn Ebeling on 23.11.23.
//

import XCTest

final class ScreenshotTests: XCTestCase {

    @MainActor
    func testSampleScreenshot() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        snapshot("0-demoScreenshot")
    }
}
