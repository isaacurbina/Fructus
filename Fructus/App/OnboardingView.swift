//
//  OnboardingView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/7/25.
//

import SwiftUI

struct OnboardingView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
    var body: some View {
		TabView {
			ForEach(0..<5) { item in
				FruitCardView()
			} // ForEach
		} // TabView
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
    }
}


// MARK: - preview

#Preview {
    OnboardingView()
		.previewLayout(.sizeThatFits)
}
