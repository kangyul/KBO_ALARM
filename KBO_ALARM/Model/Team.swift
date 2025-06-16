//
//  Team.swift
//  KBO_ALARM
//
//  Created by Yul Kang on 6/10/25.
//

import SwiftUICore

struct Team: Identifiable {
	let id: Int
	let name: String
	let color: Color
	let logo: String
}

let kboTeams = [
	Team(id: 123, name: "LG 트윈스", color: Color(red: 165/256, green: 0, blue: 52/256), logo: "5002"),
	Team(id: 123, name: "기아 타이거즈", color: Color(red: 234/256, green: 0, blue: 41/256), logo: "2002"),
	Team(id: 123, name: "KT 위즈", color: Color(red: 0, green: 0, blue: 0), logo: "12001"),
	Team(id: 123, name: "키움 히어로즈", color: Color(red: 87/256, green: 5/256, blue: 20/256), logo: "10001"),
	Team(id: 123, name: "삼성 라이온즈", color: Color(red: 7/256, green: 76/256, blue: 161/256), logo: "1001"),
	Team(id: 123, name: "한화 이글스", color: Color(red: 252/256, green: 78/256, blue: 0/256), logo: "3001"),
	Team(id: 123, name: "두산 베어스", color: Color(red: 26/256, green: 23/256, blue: 72/256), logo: "6002"),
	Team(id: 123, name: "NC 다이노스", color: Color(red: 49/256, green: 82/256, blue: 136/256), logo: "11001"),
	Team(id: 123, name: "롯데 자이언츠", color: Color(red: 4/256, green: 30/256, blue: 66/256), logo: "3001"),
	Team(id: 123, name: "SSG 랜더스", color: Color(red: 206/256, green: 14/256, blue: 45/256), logo: "9002")
]
