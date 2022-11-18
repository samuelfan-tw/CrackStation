import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    let crackStation = CrackStation()
    
    func testCheckCorrectPassword() throws {
        //Given
        let input: String = "ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb" // 'a' sHA256
        //When
        let answer = crackStation.decrypt(shaHash:input)
        //ThenCrackStation()
        print(answer! as Any)
        XCTAssertNotNil(answer)
        XCTAssertEqual("a",answer)
    }

    func testGetword() throws{
        //Give
        let input: String = "20377cec9f51f6bf5ba1fa64649f3b1614e4eee833fd0fc5893f24f6e0accbaf" // 'a7' sHA256
        //When
        let answer = crackStation.decrypt(shaHash:input)
        //Then
        print(answer! as Any)
        XCTAssertNotNil(answer)
    }
    
    func testGetThreeord() throws{
        //Give
        let input: String = "6cb5f783b994f5f42462df1a334323e404e047b4b2ea0a2d477083a2f98714b7" // 'fTb' sHA256
        //When
        let answer = crackStation.decrypt(shaHash:input)
        //Then
        print(answer! as Any)
        XCTAssertNotNil(answer)
    }

    func testError()throws {
        //Give
        let input: String = "350ed5c4cc870b2f5ddfe8247767d75d3f50a563117ec5403d4c3a7a0d043b82" // 'Az*' sHA1
        //When
        let answer = crackStation.decrypt(shaHash:input)
        //Then 
        print(answer as Any)
        XCTAssertNil(answer)
    }
}
