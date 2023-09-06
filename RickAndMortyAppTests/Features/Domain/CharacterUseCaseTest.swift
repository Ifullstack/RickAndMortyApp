//
//  CharacterUseCaseTest.swift
//  RickAndMortyAppTests
//
//  Created by Cane Allesta on 6/9/23.
//

import XCTest
@testable import RickAndMortyApp

// MARK: - Test
class CharacterUseCaseTest: XCTestCase {
    
    // GIVEN
    var sut: CharacterUseCase?
    var sutFailure: CharacterUseCase?
    
    override func setUp() {
        super.setUp()
        sut = DefaultCharacterUseCase(repository: DefaultCharacterRepository(apiService: CharacterListFakeApiServiceSuccess()))
        sutFailure = DefaultCharacterUseCase(repository: DefaultCharacterRepository(apiService: CharacterListFakeApiServiceFailure()))
    }
    
    override func tearDown() {
        sut = nil
        sutFailure = nil
        super.tearDown()
    }
}

// MARK: - Success Tests
extension CharacterUseCaseTest {
    func testSuccessCase_getCharacterList() async {
        do {
            let response = try await sut?.getCharacterList(pageNumber: nil)
            XCTAssertTrue(response?.results.first?.id == 21)
        } catch {
            XCTFail("Always receive a response and not throw an error")
        }
    }
}

// MARK: - Failure Tests
extension CharacterUseCaseTest {
    func testFailureCase_getCharacterList() async {
        do {
            let _ = try await sutFailure?.getCharacterList(pageNumber: nil)
            XCTFail("This test should throw an error")
        } catch {
            // Test passed
        }
    }
}
