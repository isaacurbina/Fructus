//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/13/25.
//

import SwiftUI

struct SettingsLabelView: View {
	
	
	// MARK: - properties
	
	var labelText: String
	var labelImage: String
	
	
	// MARK: - body
	var body: some View {
		HStack {
			Text(labelText.uppercased())
				.fontWeight(.bold)
			Spacer()
			Image(systemName: labelImage)
		}
	}
}

struct SettingsLabelView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
