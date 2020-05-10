import XCTest
import VaradinumDomain

class Tests: XCTestCase {
    
    var error = NSError(domain: "", code: 0, userInfo: nil)
    var response = HTTPURLResponse()
    
    func testServiceError() {
        
        let clientError = ServiceError.client(response, error)
        switch clientError {
        case .client(let capturedEesponse, let capturedError):
            XCTAssertNotNil(capturedError)
            XCTAssertNotNil(capturedEesponse)
        default:
            XCTFail("fail")
        }
    }
    
}
