//
//  Routine.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/01.
//

import Foundation

struct Routine: Identifiable {
    var id = UUID()
    var title = ""
    var description = ""
    var targetCount = 0
    var weeks = [RoutineWeek()]
    
    static var example = Routine(
        title: "스터디 이름",
        description: "스터디 설명",
        targetCount: 3,
        weeks: [RoutineWeek(week: "2023년 6월 2주", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(), RoutineCheck()])])
}
