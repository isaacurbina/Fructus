//
//  FruitModel.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/10/25.
//

import SwiftUI


// MARK: - fruits data model

struct Fruit: Identifiable {
	var id = UUID()
	var title: String
	var headline: String
	var image: String
	var gradientColors: [Color]
	var description: String
	var nutrition: [String]
}
