import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testCheckCorrectPassword() throws {
        //Given
        let input: String = "ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb" // 'a' sHA256
        //When
        let answer = CrackStation().decrypt(shaHash:input)
        //Then
        print(answer! as Any)
        XCTAssertNotNil(answer)
        XCTAssertEqual("a",answer)
    }

    func testGetword() throws{
        //Give
        let input: String = "20377cec9f51f6bf5ba1fa64649f3b1614e4eee833fd0fc5893f24f6e0accbaf" // 'a7' sHA256
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
