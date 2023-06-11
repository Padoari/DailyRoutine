//
//  RoutineData.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import Foundation

class RoutineData: ObservableObject {
    @Published var routines: [Routine] = [
        Routine(title: "📕 독서 스터디", description: "주 3회 카톡방에 독서 인증 올리기", targetCount: 3, weeks: [RoutineWeek(week: "Default", check: [RoutineCheck(), RoutineCheck(), RoutineCheck()]), RoutineWeek(week: "2023년 6월 1주차", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true)]), RoutineWeek(week: "2023년 6월 2주차", check: [RoutineCheck(isCompleted: true), RoutineCheck(), RoutineCheck()])]),
        Routine(title: "👩🏻‍💻 목줄 스터디", description: "주 5회 노션에 TIL 올리기", targetCount: 5, weeks: [RoutineWeek(week: "Default", check: [RoutineCheck(), RoutineCheck(), RoutineCheck(), RoutineCheck(), RoutineCheck()]), RoutineWeek(week: "2023년 6월 1주차", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true)]), RoutineWeek(week: "2023년 6월 2주차", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(), RoutineCheck(), RoutineCheck()])]),
        Routine(title: "🎨 디자인 스터디", description: "주 4회 UI 그리기", targetCount: 4, weeks: [RoutineWeek(week: "Default", check: [RoutineCheck(), RoutineCheck(), RoutineCheck(), RoutineCheck()]), RoutineWeek(week: "2023년 6월 1주차", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(), RoutineCheck()]), RoutineWeek(week: "2023년 6월 2주차", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true)])])
    ]    
}
