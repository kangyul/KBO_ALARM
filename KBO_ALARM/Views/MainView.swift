//
//  MainView.swift
//  KBO_ALARM
//
//  Created by Yul Kang on 6/26/25.
//

import SwiftUI

struct MainView: View {
	let myTeam: Team

	var body: some View {
		VStack {
			Text("세계 최고의 야구팀: \(myTeam.name)!!!")
		}
	}
}

#Preview {
	MainView(myTeam: Team(id: 1, name: "LG 트윈스", color: Color(red: 165/256, green: 0, blue: 52/256), logo: "5002"))
}
