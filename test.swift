

import XCTest

class test: XCTestCase {
    
    let app = XCUIApplication()
    let firstPage = VolleyballPage ()
    let secondPage = ManageTeam()
    let thirdPage = ManageRoster()
    let fourthPage = ViewSchedule()
    
    
    
    
    override func setUp() {
        super.setUp()
        app.launch()
       }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func test() {
//      operation on 2nd Page
//        firstPage.goToManageRoster(testcase: XCTestCase())
        firstPage.goToManageTeam(testcase: XCTestCase())
        secondPage.inputTeamName(testcase: XCTestCase(), TN: "Jason")
        secondPage.selectSkillLevel(testcase: XCTestCase() , SL: 0.5)
        secondPage.selectAttacker(testcase: XCTestCase(), NumofA: "5 attackers")
        secondPage.selectSetter(testcase: XCTestCase(), NumofS: "1 setter")
        secondPage.backPage()
        
//        operation on 3rd page
        firstPage.goToManageRoster(testcase: XCTestCase())
        let M1 = "Andrea"
        let M2 = "Matt"
//        let N1 = 0
//        let NSP = NSPredicate(format: "label BEGINSWITH 'Reorder '")
//        let first1 = app.buttons.matching(NSP).element(boundBy: N1)
        let first = app.buttons.matching(identifier: "Reorder "+M1).element(boundBy: 0)
        let second = app.staticTexts.matching(identifier: M2).element(boundBy: 0)
        thirdPage.switchRoster(testcase: XCTestCase(), firstMate: first, secondMate: second)
        thirdPage.refreshRoster(testcase: XCTestCase())
        thirdPage.backPage()
        
//        operation on 4th page
        firstPage.goToViewSchedule(testcase: XCTestCase())
        fourthPage.finishGameClick(testcase: XCTestCase())
        fourthPage.loadGame(testcase: XCTestCase())
        fourthPage.backPage()
        
        
    }
    
}
