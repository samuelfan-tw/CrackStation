import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testCheckCorrectPassword() throws {
        //Given
        let input: String = "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8" // 'a' sHA1
        //When
        let answer = CrackStation().CrackStation(password:input)
        //Then
        print(answer! as Any)
        XCTAssertNotNil(answer)
        XCTAssertEqual("a",answer)
    }

}
