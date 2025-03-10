@testable import SwiftLintExtraRules
import TestHelpers

final class ExtraRulesTests: SwiftLintTestCase, @unchecked Sendable {
    func testWithDefaultConfiguration() {
        for ruleType in extraRules() {
            verifyRule(ruleType.description)
        }
    }
}

extension ExtraRulesTests {
    static var allTests: [(String, (ExtraRulesTests) -> () throws -> Void)] {
        [("testWithDefaultConfiguration", testWithDefaultConfiguration)]
    }
}
