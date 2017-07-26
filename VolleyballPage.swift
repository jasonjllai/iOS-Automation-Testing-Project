

import XCTest

class VolleyballPage {
        
    let app = XCUIApplication()
    let manageTeam = XCUIApplication().staticTexts["Manage Team"]
    let manageRoster = XCUIApplication().staticTexts["Manage Roster"]
    let viewSchedule = XCUIApplication().staticTexts["View Schedule"]
    let moreInfo = XCUIApplication().buttons["More Info"]
    
    func goToManageTeam (testcase: XCTestCase) {
        testcase.waitAppear(element: manageTeam)
        manageTeam.tap()
        
    }
    
    func goToManageRoster(testcase: XCTestCase) {
        testcase.waitAppear(element: manageRoster)
        manageRoster.tap()
    }
    
    func goToViewSchedule(testcase: XCTestCase) {
        testcase.waitAppear(element: viewSchedule)
        viewSchedule.tap()
    }
    
    func goToMoreInfo(testcase: XCTestCase){
        testcase.waitAppear(element: moreInfo)
        moreInfo.tap()
    }
}

extension XCTestCase {
    func waitAppear (element: XCUIElement) {
        let NSP = NSPredicate (format: "exists == true")
        expectation(for: NSP, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
    }
}
