//
//  SettingsView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/13/25.
//

import SwiftUI

struct SettingsView: View {
	
	
	// MARK: - properties
	
	@Environment(\.presentationMode) var presentationMode
	
	
	// MARK: - body
	
	var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(spacing: 20) {
					
					// mark - section 1
					GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
						Divider().padding(.vertical, 4)
						HStack(alignment: .center, spacing: 10) {
							Image("logo")
								.resizable()
								.scaledToFit()
								.frame(width: 80, height: 80)
								.cornerRadius(9)
							Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
								.font(.footnote)
						}
					}
					
					// mark - section 2
					
					
					// mark - section 3
					
					
				} // VStack
				.navigationBarTitle("Settings", displayMode: .large)
				.navigationBarItems(trailing: Button(action: {
					presentationMode.wrappedValue.dismiss()
				}) {
					Image(systemName: "xmark")
				})
			} // ScrollView
		} // NavigationView1
	}
}


// MARK: - preview

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
			.preferredColorScheme(.dark)
			.previewDevice("iPhone 16 Pro")
	}
}
