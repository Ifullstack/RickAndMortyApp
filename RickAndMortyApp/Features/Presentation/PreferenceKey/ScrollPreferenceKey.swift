//
//  ScrollPreferenceKey.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 7/9/23.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
