//
//  FructusApp.swift
//  Fructus
//
//  Created by Isaac Urbina on 4/6/25.
//

import SwiftUI

@main
struct FructusApp: App {
	
	@AppStorage("isOnboarding") var isOnboarding: Bool = true
	
	var body: some Scene {
		WindowGroup {
			if isOnboarding {
				OnboardingView()
			} else {
				ContentView()
			}
		}
	}
}
