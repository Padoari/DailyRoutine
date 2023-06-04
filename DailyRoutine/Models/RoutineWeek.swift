//
//  RoutineWeek.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/05.
//

import Foundation

struct RoutineWeek: Identifiable{
    var id = UUID()
    var week = ""
    var check = [RoutineCheck()]
}
