//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/11/25.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
		GroupBox() {
			HStack {
				Text("Content source")
				Spacer()
				Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
				Image(systemName: "arrow.up.right.square")
			}
			.font(.footnote)
		}
    }
}

#Preview {
    SourceLinkView()
		.previewLayout(.sizeThatFits)
		.padding()
}
