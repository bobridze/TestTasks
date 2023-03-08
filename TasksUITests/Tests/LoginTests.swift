//
//  LoginTests.swift
//  TasksUITests
//
//  Created by Volodymyr Zavodin on 03.03.2023.
//  Copyright © 2023 Cultured Code. All rights reserved.
//

import XCTest

final class LoginTests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDownWithError() throws {
        
        TasksScreen().logOutButton.tap()
    }
    override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
                let attachment = XCTAttachment(screenshot: screenshot)
                attachment.lifetime = .deleteOnSuccess
                add(attachment)
                XCUIApplication().terminate()
    }

    func testLogin() throws {
        let email = "email@test.com"
        let password = "test12345"
        
        LoginScreen().emailTextField.tap()
        LoginScreen().emailTextField.typeText(email)
        XCTAssertEqual(LoginScreen().emailTextField.value as? String, email, "Input Email was incorrect")
        
        LoginScreen().passwordTextField.tap()
        LoginScreen().passwordTextField.typeText(password)
        XCTAssertNotEqual(LoginScreen().passwordTextField.value as! String, "")
        LoginScreen().loginButton.tap()
        XCTAssertTrue(TasksScreen().rootElement.exists)
        TasksScreen().logOutButton.tap()

        let logoutAlert = XCUIApplication().alerts.scrollViews.otherElements
        XCTAssertTrue(logoutAlert.staticTexts["Do you really want to logout?"].exists)
        logoutAlert.buttons["Logout"].tap()
    }
}
