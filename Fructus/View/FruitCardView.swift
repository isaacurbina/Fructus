//
//  FruitCardView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/7/25.
//

import SwiftUI

struct FruitCardView: View {
	
	
	// MARK: - properties
	
	@State private var isAnimating: Bool = false
	var fruit: Fruit
	
	
	// MARK: - body
	
	var body: some View {
		ZStack {
			VStack(spacing: 20) {
				
				// fruit: image
				Image(fruit.image)
					.resizable()
					.scaledToFit()
					.shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 6, y: 8)
					.scaleEffect(isAnimating ? 1.0 : 0.6)
				
				// fruit: title
				Text(fruit.title)
					.foregroundColor(.white)
					.font(.largeTitle)
					.fontWeight(.heavy)
					.shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 2, x: 2, y: 2)
				
				// fruit: headline
				Text(fruit.description)
					.foregroundColor(.white)
					.multilineTextAlignment(.center)
					.padding(.horizontal, 16)
					.frame(maxWidth: 480)
				
				// button: start
				StartButtonView()
				
			} // VStack
		} //ZStack
		.onAppear {
			withAnimation(.easeOut(duration: 0.5)) {
				isAnimating = true
			}
		}
		.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
		.background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .leading, endPoint: .trailing))
		.cornerRadius(20)
		.padding(.horizontal, 20)
	}
}


// MARK: - preview

#Preview {
	FruitCardView(fruit: fruitsData[0])
		.previewLayout(.sizeThatFits)
}
