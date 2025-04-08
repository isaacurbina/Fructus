//
//  StartButtonView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/7/25.
//

import SwiftUI

struct StartButtonView: View {
	
	
	// MARK: - properties
	
	
	
	// MARK: - body
	
    var body: some View {
		Button(action: {
			print("Exit the onboarding.")
		}) {
			HStack(spacing: 8) {
				Text("Start")
				Image(systemName: "arrow.right.circle")
					.imageScale(.large)
			}
			.padding(.horizontal, 16)
			.padding(.vertical, 10)
			.background(
				Capsule()
					.strokeBorder(.white, lineWidth: 1.25)
			)
		} // Button
		.accentColor(.white)
    }
}


// MARK: - preview

#Preview {
    StartButtonView()
		.previewLayout(.sizeThatFits)
		.preferredColorScheme(.dark)
}
