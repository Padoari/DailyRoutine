//
//  RoutineData.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import Foundation

class RoutineData: ObservableObject {
    @Published var routines: [Routine] = [
        Routine(title: "독서 스터디", description: "책을 읽어야해요", check: [RoutineCheck(), RoutineCheck(), RoutineCheck()]),
        Routine(title: "개발 스터디", description: "책을 읽어야해요", check: [RoutineCheck(), RoutineCheck(), RoutineCheck(), RoutineCheck()]),
        Routine(title: "디자인 스터디", description: "책을 읽어야해요", check: [RoutineCheck(), RoutineCheck()])
    ]
    
}
