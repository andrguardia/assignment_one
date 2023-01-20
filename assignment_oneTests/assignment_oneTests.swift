//
//  assignment_oneTests.swift
//  assignment_oneTests
//
//  Created by IIT Phys 440 on 1/13/23.
//

import XCTest

final class assignment_oneTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAreaSphere() throws {
        /// This function tests the acurracy of the Sphere Area calculation with test radiuses of 1.0 and 2.0 for an acurracy of 1e-14
        /// Returns: approved if the test is passed, XCTAssertEqual error if the test fails
        var sphereParams = SphereParameters()
        sphereParams.radius = 1.0
        var sphereArea = sphereParams.calculateAreaSphere()
        var expectedValue = 4.0*Double.pi
        XCTAssertEqual(sphereArea, expectedValue, accuracy: 1e-14)
        
        sphereParams = SphereParameters()
        sphereParams.radius = 2.0
        sphereArea = sphereParams.calculateAreaSphere()
        expectedValue = 16*Double.pi
        XCTAssertEqual(sphereArea, expectedValue, accuracy: 1e-14)
    }
    
    func testAreaCube() throws {
        /// This function tests the acurracy of the Cube Area calculation with test radiuses of 1.0 and 2.0 for an acurracy of 1e-14
        /// Returns: approved if the test is passed, XCTAssertEqual error if the test fails
        var cubeParams = CubeParameters()
        cubeParams.length = 1.0
        var cubeArea = cubeParams.calculateAreaCube()
        var expectedValue = 6.0
        XCTAssertEqual(cubeArea, expectedValue, accuracy: 1e-14)
        
        cubeParams = CubeParameters()
        cubeParams.length = 2.0
        cubeArea = cubeParams.calculateAreaCube()
        expectedValue = 24.0
        XCTAssertEqual(cubeArea, expectedValue, accuracy: 1e-14)
        
        
    }
    
    func testVolumeSphere() throws {
        /// This function tests the acurracy of the Sphere Volume calculation with test radiuses 1.0 and 2.0 for an acurracy of 1e-14
        /// Returns: approved if the test is passed, XCTAssertEqual error if the test fails
        var sphereParams = SphereParameters()
        sphereParams.radius = 1.0
        var sphereVolume = sphereParams.calculateVolumeSphere()
        var expectedValue = (4.0/3.0)*Double.pi
        XCTAssertEqual(sphereVolume, expectedValue, accuracy: 1e-14)
        
        sphereParams = SphereParameters()
        sphereParams.radius = 2.0
        sphereVolume = sphereParams.calculateVolumeSphere()
        expectedValue = (4.0/3.0)*Double.pi*8.0
        XCTAssertEqual(sphereVolume, expectedValue, accuracy: 1e-14)

    }
    
    func testVolumeCube() throws {
        /// This function tests the acurracy of the Cube Volume calculation with test radiuses of 1.0 and 2.0 for an acurracy of 1e-14
        /// Returns: approved if the test is passed, XCTAssertEqual error if the test fails
        var cubeParams = CubeParameters()
        cubeParams.length = 1.0
        var cubeVolume = cubeParams.calculateVolumeCube()
        var expectedValue = 1.0
        XCTAssertEqual(cubeVolume, expectedValue, accuracy: 1e-14)
        
        cubeParams = CubeParameters()
        cubeParams.length = 2.0
        cubeVolume = cubeParams.calculateVolumeCube()
        expectedValue = 8.0
        XCTAssertEqual(cubeVolume, expectedValue, accuracy: 1e-14)
        
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
