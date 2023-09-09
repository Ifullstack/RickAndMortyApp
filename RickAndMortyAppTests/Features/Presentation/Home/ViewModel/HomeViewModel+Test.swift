//
//  HomeViewModel+Test.swift
//  RickAndMortyAppTests
//
//  Created by Cane Allesta on 9/9/23.
//

import XCTest
@testable import RickAndMortyApp

// MARK: - Test
class HomeViewModelTest: XCTestCase {
    
    // GIVEN
    var sut: HomeViewModel?
    var sutFailure: HomeViewModel?
    
    override func setUp() {
        super.setUp()
        sut = HomeViewModel(useCase: DefaultCharacterUseCase(repository: DefaultCharacterRepository(apiService: CharacterListFakeApiServiceSuccess())))
        sutFailure = HomeViewModel(useCase: DefaultCharacterUseCase(repository: DefaultCharacterRepository(apiService: CharacterListFakeApiServiceFailure())))
    }
    
    override func tearDown() {
        sut = nil
        sutFailure = nil
        super.tearDown()
    }
}

// MARK: - Success Tests
extension HomeViewModelTest {
    func testSuccessCase_loadCharacterList() async {
        await sut?.loadCharacterList()
        XCTAssertTrue(sut?.characterList.first?.id == 21)
        XCTAssertNil(sut?.viewError)
        if let hasError = sut?.hasError {
            XCTAssertFalse(hasError)
        }
    }
}

// MARK: - Failure Tests
extension HomeViewModelTest {
    func testFailureCase_loadCharacterList() async {
        guard let sutFailure else { return }
        await sutFailure.loadCharacterList()
        XCTAssertTrue(sutFailure.characterList.isEmpty)
        XCTAssertNotNil(sutFailure.viewError)
        XCTAssertTrue(sutFailure.hasError)
    }
}
