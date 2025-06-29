//
//  TeamSelectionView.swift
//  KBO_ALARM
//
//  Created by Yul Kang on 6/26/25.
//

import SwiftUI

struct TeamSelectionView: View {
	@Binding var myTeam: Team?
	@Binding var isConfirmed: Bool

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

			if myTeam != nil {
				Button(action: {
					isConfirmed = true
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
	// Step 1: @State로 임시 상태 만들고
	struct PreviewWrapper: View {
		@State var selectedTeam: Team? = nil
		@State var isConfirmed: Bool = false

		var body: some View {
			TeamSelectionView(myTeam: $selectedTeam, isConfirmed: $isConfirmed)
		}
	}

	// Step 2: 래퍼 뷰를 리턴
	return PreviewWrapper()
}
