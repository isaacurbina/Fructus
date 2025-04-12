//
//  ContentView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/6/25.
//

import SwiftUI

struct ContentView: View {
	
	
	// MARK: - properties
	
	var fruits: [Fruit] = fruitsData
	
	
	// MARK: - body
	
	var body: some View {
		NavigationView {
			List {
				ForEach(fruits.shuffled()) { item in
					NavigationLink(destination: FruitDetailView(fruit: item)) {
						FruitRowView(fruit: item)
							.padding(.vertical, 4)
					}
				}
			} // List
			.navigationTitle("Fruits")
			.listRowSeparator(.hidden)
		} // NavigationView
	}
}


// MARK: - preview

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(fruits: fruitsData)
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
