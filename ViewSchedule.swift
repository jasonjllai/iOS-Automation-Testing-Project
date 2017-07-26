

import XCTest

class ViewSchedule {
        
    let back = XCUIApplication().navigationBars.buttons.element(boundBy: 0)
    let finishGame = XCUIApplication().buttons.matching(identifier: "Finish Game").element(boundBy: 0)
    let awesome = XCUIApplication().alerts.buttons.matching(identifier: "Awesome!").element(boundBy: 0)
    let loadMoreGames = XCUIApplication().buttons.matching(identifier: "Load More Games").element(boundBy: 0)
    let nextGame = XCUIApplication().staticTexts.matching(identifier: "Game 4 - Tomorrow").element(boundBy: 0)
    
    func finishGameClick(testcase: XCTestCase) {
        testcase.waitAppear(element: finishGame)
        finishGame.tap()
        testcase.waitAppear(element: awesome)
        awesome.tap()
        
    }
    
    func loadGame(testcase: XCTestCase){
        testcase.waitAppear(element: loadMoreGames)
        loadMoreGames.tap()
        testcase.waitAppear(element: nextGame)
        XCTAssert(nextGame.exists)
    }
    
    
    
    func backPage() {
        back.tap()
    }
    
    
}
