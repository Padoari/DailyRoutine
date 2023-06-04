//
//  RoutineData.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import Foundation

class RoutineData: ObservableObject {
    @Published var routines: [Routine] = [
        Routine(title: "독서 스터디", description: "책을 읽어야해요", weeks: [RoutineWeek(week: "2023년 6월 2주", check: [RoutineCheck(isCompleted: true), RoutineCheck(), RoutineCheck()])]),
        Routine(title: "개발 스터디", description: "책을 읽어야해요", weeks: [RoutineWeek(week: "2023년 6월 2주", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck()])]),
        Routine(title: "디자인 스터디", description: "책을 읽어야해요", weeks: [RoutineWeek(week: "2023년 6월 2주", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(), RoutineCheck()])])
    ]
    
}
