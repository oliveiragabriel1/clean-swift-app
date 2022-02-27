import XCTest
import Presentation
import Validation

class EmailValidatorAdapterTests: XCTestCase {
    
    
    func test_invalid_emails() {
        let sut = makeSut()
        XCTAssertFalse(sut.isValid(email: "RR"))
        XCTAssertFalse(sut.isValid(email: "rr@"))
        XCTAssertFalse(sut.isValid(email: "rr@rr"))
        XCTAssertFalse(sut.isValid(email: "rr@rr."))
        XCTAssertFalse(sut.isValid(email: "@rr.com"))
    }
    
    func test_valid_emails() {
        let sut = makeSut()
        XCTAssertTrue(sut.isValid(email: "gabriel@gmail.com"))
        XCTAssertTrue(sut.isValid(email: "gabriel@hotmail.com"))
        XCTAssertTrue(sut.isValid(email: "gabriel@hotmail.com.br"))
        XCTAssertTrue(sut.isValid(email: "gabriel@bol.com"))
        XCTAssertTrue(sut.isValid(email: "gabriel@icloud.com"))
    }
}


extension EmailValidatorAdapterTests {
    
    func makeSut() -> EmailValidatorAdapter {
        return EmailValidatorAdapter()
    }
}
