

import XCTest

class ManageTeam {
    let teamName = XCUIApplication().textFields.element(boundBy: 0)
    let skillLevel = XCUIApplication().sliders.element(boundBy: 0)
    let attacker = XCUIApplication().pickerWheels.element(boundBy: 0)
    let setter = XCUIApplication().pickerWheels.element(boundBy: 1)
    let back = XCUIApplication().navigationBars.buttons.element(boundBy: 0)
    
    func inputTeamName(testcase: XCTestCase, TN: String) {
        testcase.waitAppear(element: teamName)
        teamName.tap()
        teamName.typeText(TN)
        XCUIApplication().keyboards.element(boundBy: 0).buttons["Done"].tap()
        sleep(3)
    }
    
    func selectSkillLevel(testcase: XCTestCase, SL: CGFloat) {
        testcase.waitAppear(element: skillLevel)
        skillLevel.tap()
        skillLevel.adjust(toNormalizedSliderPosition: SL)
    }
    
    func selectAttacker(testcase: XCTestCase, NumofA: String)  {
        testcase.waitAppear(element: attacker)        
        //        attacker.tap()
        attacker.adjust(toPickerWheelValue: NumofA)
        
    }
    
    func selectSetter(testcase: XCTestCase, NumofS: String)  {
        testcase.waitAppear(element: setter)
//        setter.tap()
        setter.adjust(toPickerWheelValue: NumofS)
    }
    
    func backPage() {
        back.tap()
    }
    
    
    }
