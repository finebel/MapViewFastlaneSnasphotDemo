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
    
//    func testManualScreenshot() {
//        let app = XCUIApplication()
//        app.launch()
//        
//        sleep(2) // wait for annotations to load
//        let image = XCUIScreen.main.screenshot().image
//        
//        let path = URL.documentsDirectory.appending(path: "sampleScreenshot.png")
//        print(path)
//        try? image.pngData()?.write(to: path, options: .atomic)
//    }
}
