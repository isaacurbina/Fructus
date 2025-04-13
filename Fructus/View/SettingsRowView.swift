//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/13/25.
//

import SwiftUI

struct SettingsRowView: View {
	
	
	// MARK: - properties
	
	var name: String
	var content: String? = nil
	var linkLabel: String? = nil
	var linkDestination: String? = nil
	
	
	// MARK: - body
	
    var body: some View {
		VStack {
			Divider().padding(.vertical, 4)
			
			HStack {
				Text(name).foregroundColor(.gray)
				Spacer()
				
				if let unwrappedContent = content {
					Text(unwrappedContent)
					
				} else if let unwrappedLinkLabel = linkLabel, let unwrappedLinkDestination = linkDestination {
					Link(unwrappedLinkLabel, destination: URL(string: "https://\(unwrappedLinkDestination)")!)
					Image(systemName: "arrow.up.right.square")
						.foregroundColor(.pink)
					
				} else {
					EmptyView()
				}
			}
		}
    }
}


// MARK: - preview

struct SettingsRowView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			SettingsRowView(name: "Developer", content: "John / Jane")
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
			
			SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
				.previewLayout(.fixed(width: 375, height: 60))
				.preferredColorScheme(.dark)
				.padding()
		}
	}
}
