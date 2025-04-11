//
//  OnboardingView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/7/25.
//

import SwiftUI

struct OnboardingView: View {
	
	
	// MARK: - properties
	
	var fruits: [Fruit] = fruitsData
	
	
	// MARK: - body
	
    var body: some View {
		TabView {
			ForEach(fruits[0...5]) { item in
				FruitCardView(fruit: item)
			} // ForEach
		} // TabView
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
    }
}


// MARK: - preview

#Preview {
	OnboardingView(fruits: fruitsData)
		.previewLayout(.sizeThatFits)
}
