import XCTest
import Presentation

public final class EmailValidatorAdapter: EmailValidator {
    private let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    public func isValid(email: String) -> Bool {
        let range = NSRange(location: 0, length: email.utf16.count)
        let regex = try! NSRegularExpression(pattern: pattern)
        return regex.firstMatch(in: email, options: [], range: range) != nil
    }
}
class EmailValidatorAdapterTests: XCTestCase {


    func test_invalid_emails() {
        let sut = EmailValidatorAdapter()
        XCTAssertFalse(sut.isValid(email: "RR"))
        XCTAssertFalse(sut.isValid(email: "rr@"))
        XCTAssertFalse(sut.isValid(email: "rr@rr"))
        XCTAssertFalse(sut.isValid(email: "rr@rr."))
        XCTAssertFalse(sut.isValid(email: "@rr.com"))
    }

    func test_valid_emails() {
        let sut = EmailValidatorAdapter()
        XCTAssertTrue(sut.isValid(email: "gabriel@gmail.com"))
        XCTAssertTrue(sut.isValid(email: "gabriel@hotmail.com"))
        XCTAssertTrue(sut.isValid(email: "gabriel@hotmail.com.br"))
        XCTAssertTrue(sut.isValid(email: "gabriel@bol.com"))
        XCTAssertTrue(sut.isValid(email: "gabriel@icloud.com"))
    }
}
