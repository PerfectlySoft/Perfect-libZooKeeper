import XCTest
@testable import czookeeper

class czookeeperTests: XCTestCase {
    func testExample() {
        guard let h = zookeeper_init("localhost:2181", { zooHandle, watcherType, watcherState, path, context in }, 10000, nil, nil, 0) else {
          XCTFail("failed.")
          return
        }
        zookeeper_close(h)
    }


    static var allTests : [(String, (czookeeperTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
