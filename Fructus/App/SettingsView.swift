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
	@AppStorage("isOnboarding") var isOnboarding: Bool = false
	
	
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
					
					GroupBox(
						label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
					) {
						Divider().padding(.vertical, 4)
						Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the volume screen again.")
							.padding(.vertical, 8)
							.frame(minHeight: 60)
							.layoutPriority(1)
							.font(.footnote)
							.multilineTextAlignment(.leading)
						
						Toggle(isOn: $isOnboarding) {
							if isOnboarding {
								Text("Restarted".uppercased())
									.fontWeight(.bold)
									.foregroundColor(.green)
								
							} else {
								Text("Restart".uppercased())
									.fontWeight(.bold)
									.foregroundColor(.secondary)
							}
						}
						.padding()
						.background(
							Color(UIColor.tertiarySystemBackground)
							.clipShape(
								RoundedRectangle(cornerRadius: 8, style: .continuous)
							)
						)
					}
					
					// mark - section 3
					
					GroupBox(
						label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
					) {						
						SettingsRowView(name: "Developer", content: "John / Jane")
						SettingsRowView(name: "Designer", content: "Robert Petras")
						SettingsRowView(name: "Compatibility", content: "iOS 14")
						SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
						SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
						SettingsRowView(name: "SwiftUI", content: "2.0")
						SettingsRowView(name: "Version", content: "1.1.0")
					}
					
					
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
