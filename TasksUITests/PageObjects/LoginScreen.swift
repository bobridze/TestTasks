//
//  LoginScreen.swift
//  TasksUITests
//
//  Created by Volodymyr Zavodin on 01.03.2023.
//  Copyright © 2023 Cultured Code. All rights reserved.
//

import Foundation
import XCTest

public class LoginScreen: BaseTest {
    override var rootElement: XCUIElement {
        return app.buttons["Login"]
    }
    //Page Elements
    lazy var emailTextField = app.textFields["Email"]
    lazy var passwordTextField = app.secureTextFields["Password"]
    lazy var loginButton = app.buttons["Login"]
    
    lazy var activityIndicator = app/*@START_MENU_TOKEN@*/.activityIndicators["login-activity-indicator"]/*[[".activityIndicators[\"In progress\"]",".activityIndicators[\"login-activity-indicator\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    //Alerts
    lazy var errorAlert = app.alerts["Error"]
    
    @discardableResult
    func tapLoginButton(completion: Completion = nil) -> Self {
        log("tap the Login Button")
        loginButton.tap()
        return self
    }
    
    func enterEmail(_ text: String) -> Self {
        log("type email")
        emailTextField.tap()
        emailTextField.typeText(text)
        return self
    }
    
    func enterPassword(text: String) -> Self {
        log("type password")
        passwordTextField.tap()
        passwordTextField.typeText(text)
        return self
    }
    
    func isLoginButtonEnabled() -> Bool {
        if loginButton.isHittable {
            return false
        }
        return true
    }
    
    func tapLoginExpectingError() -> Self {
        if emailTextField.value != nil,
           let aValue = emailTextField.value as? String,
           let placeholderValue = emailTextField.placeholderValue,
           aValue != placeholderValue
        {
           loginButton.tap()
        }
        return self
    }
    
    func clearText() {
            guard let stringValue = emailTextField.value as? String else {
                return
            }
        var deleteString = String()
        for _ in stringValue {
            deleteString += XCUIKeyboardKey.delete.rawValue
            }
        }
        
        func typeTextAndPressEnter(_ text: String) {
            //self.typeText("\(text)\n")
        }
}
