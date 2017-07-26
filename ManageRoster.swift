

import XCTest

class ManageRoster {
    

    
//    let Mate1 = XCUIApplication().buttons.matching(identifier: "Reorder Brain").element(boundBy: 0)
    let Mate2 = XCUIApplication().cells.staticTexts.element(boundBy: 0)
    let back = XCUIApplication().navigationBars.buttons.element(boundBy: 0)
    let dismiss = XCUIApplication().alerts.buttons.matching(identifier: "Dismiss").element(boundBy: 0)
    
//    let first = XCUIApplication().buttons.matching(identifier: "Reorder "+M1).element(boundBy: 0)
//    let second = XCUIApplication().staticTexts.matching(identifier: M2).element(boundBy: 0)

    
 
    func switchRoster(testcase: XCTestCase, firstMate: XCUIElement, secondMate: XCUIElement) {
//        testcase.waitAppear(element: XCUIApplication().buttons.matching(identifier: "Reorder \(firstMate)"))
//        let NSP = NSPredicate(format: "label BEGINSWITH 'Reorder '")
//        testcase.waitAppear(element: XCUIApplication().buttons.matching(identifier: "af").element(boundBy: firstMate))
        testcase.waitAppear(element: firstMate)
        firstMate.press(forDuration: 2, thenDragTo: secondMate)
    }
    
    func refreshRoster(testcase: XCTestCase){
        testcase.waitAppear(element: Mate2)
        let start = Mate2.coordinate(withNormalizedOffset: CGVector (dx: 0, dy: 0))
        let end = Mate2.coordinate(withNormalizedOffset: CGVector (dx: 0, dy: 10) )
        start.press(forDuration: 2, thenDragTo: end)
        testcase.waitAppear(element: dismiss)
        dismiss.tap()
    }
    
    
    func backPage() {
        back.tap()
    }
}
