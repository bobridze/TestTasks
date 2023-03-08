## Greetings %username% !

This is a quick manual on what we expect from you during performing the test task.

This will be a simple app that contains two features: Login & Checklist.

* First of all, get to know with the application under test, build the test app and check out its possibilities and bugs. 

* Second of all, we need to evaluate your qa manual background, so create down below:
 - short testplan 
 - list of the testcases
 - list of discovered issues
 
* Third of all, write test automation according test automation purposes  

* And fourth of all, push the whole project to github.com and notice us with a link to your repo on completion. 

Please reachout Oksana (otolstykh@readdle.com) if you have any questions.

## Good Luck!


#YOUR TASK STARTS HERE: 


# TEST PLAN: 
1) Entry criteria
- Planning phase has been finished
- Testcases created and ready to automation
- Testable UI views are available
- All functional requirements have been defined
- Automation framework prepared for scenarios creation

2) Exit criteria
- All planned testcases have been covered
- All bugs that was found is reviewed

3) Logging and reporting
- Developers fix the defects found in each bug report. If these defects are related to other functionality they must be reported.

4) Testing procedure
- Test cases preparation
- Test execution
- Bug reporting
- Verifying each bug after fix by developers

5)Testing types planned to be verified:
- Interrupt Testing (Verify how application reacts to interruption and resume to previous state. For example multiple reasons can interrupt application session, for example getting a phone call, messages, notifications, low battery or system error)
- Usability testing
- Verify every single view and each element on it, check that all elements works good and understandable for user.
- Installation and launch testing

6) Test metrics
- Requirement coverage
- Test cases coverage
- Count of executed tests
- Count of bugs that was found

7) Roles and responsibilities of persons involved in testing activity - AQA Engineer Volodymyr Zavodin

8) Deliverables
- Test plan
- Test cases documentation
- Test strategy
- Test results
- Test summary report

9) Environment:
- Macbook Pro 2016(macOS Monterey)
- Iphone 14 Pro emulator with IOS 16.2

10) What parts of app will be tested:
- UI Login screen
- UI Tasks screen
- Logout Alert
- Login Alert
- Localisation both for US and UA users

# LIST OF TEST CASES: 
// Only summaries of tests: 
- Login with valid Email and valid Password
- Verify tasks sorting function on Tasks view
- Verify Compleete all/Cancel all function on Tasks view (included nested elements)
- Verify that user will be logged in after app was terminated
- Verify that user can not login with invalid Email and valid Password
- Verify that user can not login with valid Email and valid Password
- Perform Login with empty Email field
- Perform Login with empty Password field
- Verify tasks list 
- Verify alerts availability (Logout alert and Login alert)
- Verify background and font color

# LIST OF DISCOVERED ISSUES:
// Only summaries of bug reports: 
- When user logged in and tap on "Sort by name" button on Tasks screen, all tasks marks as Done.
- When user tapped multiple times on single Tasks checkbox, task with [n-1] index changed might be checked/unchecked randomly too.
- When user tapped on "Cancel all" button to uncheck all tasks, color of randomly tasks names and checkbox color are changed
- When user taps "Complete all" multiple times, checkboxes marks as Done, but button still has name "Complete all" instead of "Cancel all"
- When user is on Tasks view, arrow sign on "Sleep" task item is unclickable  
- When user restarting application, randomly tasks have Black font color on Tasks screen
- Login can be performed with multiple language(UA/RU) password
- Application background color appears randomly Black/White colors
- "Unexpected Login error" occured (floating issue, hard to reproduce)
- Application didnt Logout for current user after terminate app(It can be feature, but not sure)
- App didnt save completed tasks after Login/Logout with single user credentials
- User can login with single password sign
- Critical bug: Error Alert "Unexpected login error occured" appears when user try to login with regular credentials, hard to reproduce, occured randomly.
