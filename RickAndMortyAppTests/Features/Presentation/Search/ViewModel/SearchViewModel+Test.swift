//
//  SearchViewModel+Test.swift
//  RickAndMortyAppTests
//
//  Created by Cane Allesta on 9/9/23.
//

import XCTest
@testable import RickAndMortyApp

// MARK: - Test
class SearchViewModelTest: XCTestCase {
    
    // GIVEN
    var sut: SearchViewModel?
    var sutFailure: SearchViewModel?
    
    override func setUp() {
        super.setUp()
        sut = SearchViewModel(useCase: DefaultCharacterUseCase(repository: DefaultCharacterRepository(apiService: CharacterListFakeApiServiceSuccess())))
        sutFailure = SearchViewModel(useCase: DefaultCharacterUseCase(repository: DefaultCharacterRepository(apiService: CharacterListFakeApiServiceFailure())))
    }
    
    override func tearDown() {
        sut = nil
        sutFailure = nil
        super.tearDown()
    }
}

// MARK: - Success Tests
extension SearchViewModelTest {
    func testSuccessCaseSearchCharacter() async {
        await sut?.searchCharacter(by: "Rick")
        XCTAssertTrue(sut?.characterList.first?.id == 21)
    }
    
    func testSuccessCaseSearchMoreCharacter() async {
        await sut?.searchMoreCharacters(by: "Rick")
        XCTAssertTrue(sut?.characterList.first?.id == 21)
    }
}

// MARK: - Failure Tests
extension SearchViewModelTest {
    func testFailureCase_loadCharacterList() async {
        guard let sutFailure else { return }
        await sutFailure.searchCharacter(by: "Rick")
        XCTAssertTrue(sutFailure.characterList.isEmpty)
    }
    
    func testFailureCase_SearchMoreCharacter() async {
        guard let sutFailure else { return }
        await sutFailure.searchMoreCharacters(by: "Rick")
        XCTAssertTrue(sutFailure.characterList.isEmpty)
    }
}

