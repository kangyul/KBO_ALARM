//
//  MainView.swift
//  KBO_ALARM
//
//  Created by Yul Kang on 6/26/25.
//

import SwiftUI

struct MainView: View {
	@Binding var myTeam: Team?
	@Binding var isConfirmed: Bool

	var body: some View {
		VStack {
			HStack {
				Button(action: {
					myTeam = nil
					isConfirmed = false
				}) {
					Image(systemName: "house")
						.font(.system(size: 30))
						.padding(.leading)
				}

				Spacer()
			}
			Text("세계 최고의 야구팀: \(myTeam?.name)!!!")
		}
	}
}
