import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testCheckCorrectPassword() throws {
        //Given
        let input: String = "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8" // 'a' sHA1
        //When
        let answer = CrackStation().decrypt(shaHash:input)
        //Then
        print(answer! as Any)
        XCTAssertNotNil(answer)
        XCTAssertEqual("a",answer)
    }

    func testGetword() throws{
        //Give
        let input: String = "b2c7c0caa10a0cca5ea7d69e54018ae0c0389dd6" // 'U' sHA1
        //When
        let answer = CrackStation().decrypt(shaHash:input)
        //Then
        print(answer! as Any)
        XCTAssertNotNil(answer)
    }
    func testError()throws {
        //Give
        let input: String = "3c01bdbb26f358bab27f267924aa2c9a03fcfdb8" // 'ABC' sHA1
        //When
        let answer = CrackStation().decrypt(shaHash:input)
        //Then 
        print(answer as Any)
        XCTAssertNil(answer)
    }
}
