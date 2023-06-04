//
//  WeekView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/05.
//

import SwiftUI

struct WeekView: View {
    var week: RoutineWeek
    
    var body: some View {
        HStack(spacing: 4.0){
            ForEach(week.check) { check in
                CheckView(isCompleted: check.isCompleted)
            }
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView(week: RoutineWeek(week: "2023년 6월 2주", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(), RoutineCheck()]))
    }
}
