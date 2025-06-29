//
//  ContentView.swift
//  KBO_ALARM
//
//  Created by Yul Kang on 6/10/25.
//

import SwiftUI

struct ContentView: View {
	@State private var myTeam: Team? = nil
	@State private var isConfirmed: Bool = false

	var body: some View {
		if isConfirmed, let team = myTeam {
			MainView(myTeam: team)
		} else {
			TeamSelectionView(myTeam: $myTeam, isConfirmed: $isConfirmed)
		}
	}
}

#Preview {
    ContentView()
}
