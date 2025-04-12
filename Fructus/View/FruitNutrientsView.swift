//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/12/25.
//

import SwiftUI

struct FruitNutrientsView: View {
	
	
	// MARK: - properties
	
	var fruit: Fruit
	let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
	
	
	// MARK: - body
	
    var body: some View {
		GroupBox() {
			DisclosureGroup("Nutritional value per 100g") {
				ForEach(0..<nutrients.count, id: \.self) { item in
					
					Divider().padding(.vertical, 2)
					
					HStack {
						Group {
							Image(systemName: "info.circle")
							Text(nutrients[item])
						}
						.foregroundColor(fruit.gradientColors[1])
						.font(.system(.body).bold())
						
						Spacer(minLength: 25)
						Spacer()
						Text(fruit.nutrition[item])
							.multilineTextAlignment(.trailing)
					}
				}
			}
		} // GroupBox
    }
}


// MARK: - preview

struct FruitNutrientsView_Previews: PreviewProvider {
	static var previews: some View {
		FruitNutrientsView(fruit: fruitsData[0])
			.previewLayout(.fixed(width: 375, height: 480))
			.preferredColorScheme(.dark)
	}
}
