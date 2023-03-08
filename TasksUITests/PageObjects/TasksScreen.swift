//
//  TasksScreen.swift
//  TasksUITests
//
//  Created by Volodymyr Zavodin on 05.03.2023.
//  Copyright © 2023 Cultured Code. All rights reserved.
//

import Foundation
import XCTest

public class TasksScreen: BaseTest {
    override var rootElement: XCUIElement {
        return app.navigationBars["Tasks"]
    }
    //Page Elements
    lazy var tasksNavigationBar = app.navigationBars["Tasks"]
    lazy var logOutButton = app.buttons["Logout"]
    lazy var tasksList = app.descendants(matching: .cell)
    
    lazy var toolbar = app.toolbars["Toolbar"]
    lazy var completeAllButton = toolbar.buttons["Complete All"]
    lazy var sortByNameButton = toolbar/*@START_MENU_TOKEN@*/.buttons["sort-tasks-bar-button-item"]/*[[".buttons[\"Sort by Name\"]",".buttons[\"sort-tasks-bar-button-item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    lazy var table = app.tables
    //Table view
    lazy var sleepItem = table/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Sleep")/*[[".cells.containing(.button, identifier:\"chevron\")",".cells.containing(.button, identifier:\"More Info\")",".cells.containing(.staticText, identifier:\"Sleep\")"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.children(matching: .other).element(boundBy: 0).children(matching: .other).element
    lazy var moreInfoButton = sleepItem/*@START_MENU_TOKEN@*/.buttons["More Info"]/*[[".cells.buttons[\"More Info\"]",".buttons[\"More Info\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    //Alerts
    lazy var logoutAlert = app.alerts.scrollViews.otherElements.children(matching: XCUIElement.ElementType.button)
    lazy var errorRetryButton = app.alerts["Error"].scrollViews.otherElements.buttons["Retry"]
    
    @discardableResult
    func tapLoginButton(completion: Completion = nil) -> Self {
        log("tap the Login Button")
        
        return self
    }
    
    func isLogoutAlertEnabled() -> Bool {
        if logoutAlert.staticTexts["Do you really want to logout?"].exists && logoutAlert.buttons["Cancel"].exists && logoutAlert.buttons["Logout"].exists {
            return true
        }
        return false
    }
}
