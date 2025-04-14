//
//  ContentView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/6/25.
//

import SwiftUI

struct ContentView: View {
	
	
	// MARK: - properties
	
	@State private var isShowingSettings: Bool = false
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
			.navigationBarItems(trailing: Button(action: {
				isShowingSettings = true
			}) {
				Image(systemName: "slider.horizontal.3")
			} // Button
				.sheet(isPresented: $isShowingSettings) {
					SettingsView()
				}
			)
		} // NavigationView
		.navigationViewStyle(StackNavigationViewStyle())
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
