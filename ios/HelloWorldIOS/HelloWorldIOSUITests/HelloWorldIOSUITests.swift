import XCTest

final class HelloWorldIOSUITests: XCTestCase {
    func testHelloWorldAppears_andChangesAfterButtonTap() {
        let app = XCUIApplication()
        app.launch()

        let label = app.staticTexts["helloLabel"]
        XCTAssertTrue(label.waitForExistence(timeout: 5))
        XCTAssertEqual(label.label, "Hello World")

        app.buttons["helloButton"].tap()
        XCTAssertEqual(label.label, "Hello Button")
    }
}

