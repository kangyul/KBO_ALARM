//
//  TeamSelectionView.swift
//  KBO_ALARM
//
//  Created by Yul Kang on 6/26/25.
//

import SwiftUI

struct TeamSelectionView: View {
	@State private var myTeam: Team? = nil

	let columns = [
		GridItem(.flexible()),
		GridItem(.flexible()),
		GridItem(.flexible())
	]

	var body: some View {
		VStack {
			Text("나의 KBO 팀을 선택하세요")
				.font(.title)
				.fontWeight(.semibold)
				.padding(.top, 16)

			ScrollView {
				LazyVGrid(columns: columns, spacing: 20) {
					ForEach(kboTeams) { kboTeam in
						Button(action: {
							myTeam = kboTeam
						}) {
							ZStack {
								VStack {
									Image(kboTeam.logo)
										.resizable()
										.frame(width: 80, height: 80)
								}
								.padding()
								.background(kboTeam.color)
								.cornerRadius(8)
								.opacity(myTeam?.id == kboTeam.id ? 0.5 : 1.0)

								if myTeam?.id == kboTeam.id {
									Image(systemName: "checkmark.circle.fill")
										.font(.system(size: 50))
										.foregroundColor(.white)
								}
							}
						}
					}
				}
				.padding()
			}

			if let selectedTeam = myTeam {
				Button(action: {
					print("confirm Button pressed")
				}) {
					Text("팀 선택 완료")
						.font(.headline)
						.foregroundColor(.white)
						.padding()
						.background(Color.blue)
						.cornerRadius(10)
				}
			}
		}
	}
}

#Preview {
	TeamSelectionView()
}
