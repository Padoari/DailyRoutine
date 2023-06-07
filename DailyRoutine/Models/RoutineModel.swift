//
//  RoutineModel.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/07.
//

//import Foundation
//
//// MARK: - RoutineCheck 표시
//struct RoutineCheck: Identifiable {
//    var id = UUID()
//    var isCompleted = false
//}
//// MARK: - Routine Model
//struct Routine: Identifiable {
//    var id = UUID()
//    var title = ""
//    var description = ""
//    var targetCount = 1
//    var weeks = [RoutineWeek()]
//
//    static var example = Routine(
//        title: "스터디 이름",
//        description: "스터디 설명",
//        targetCount: 3,
//        weeks: [RoutineWeek(week: "2023년 6월 2주", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(), RoutineCheck()])])
//}
//// MARK: - Routine Week 주 기준
//struct RoutineWeek: Identifiable{
//    var id = UUID()
//    var week = ""
//    var check = [RoutineCheck()]
//}
