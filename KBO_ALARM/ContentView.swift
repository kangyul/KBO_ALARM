//
//  ContentView.swift
//  KBO_ALARM
//
//  Created by Yul Kang on 6/10/25.
//

import SwiftUI

struct ContentView: View {
	@State private var myTeam: Team? = nil

	var body: some View {
		VStack {
			Text("KBO 팀을 선택하세요")
				.font(.title2)
				.fontWeight(.semibold)
				.padding(.top, 16)

			ScrollView {
				VStack(spacing: 20) {
					ForEach(0..<kboTeams.count) { index in
						Text("\(kboTeams[index].name)")
							.frame(maxWidth: .infinity)
							.padding()
							.background(kboTeams[index].color)
							.foregroundColor(.white)
							.cornerRadius(12)
							.padding(.horizontal)
					}
				}
				.padding()
			}
		}
	}
}

#Preview {
    ContentView()
}
