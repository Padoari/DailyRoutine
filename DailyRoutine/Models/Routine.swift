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
    var check = [RoutineCheck()]
    
    static var example = Routine(
        title: "스터디 이름",
        description: "스터디 설명",
        check: [RoutineCheck(), RoutineCheck(), RoutineCheck()])
}
