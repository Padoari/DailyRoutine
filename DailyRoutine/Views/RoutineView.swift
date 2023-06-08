//
//  RoutineView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import SwiftUI

struct RoutineView: View {
    
    let routine: Routine
    let selectedWeek: String
    
    
    var body: some View {
        
        let filteredWeek = routine.weeks.filter { $0.week == selectedWeek }
        
        VStack(alignment: .leading, spacing: 8.0) {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(routine.title)
                    .font(.headline)
                Text(routine.description)
                    .font(.caption)
            }
            if filteredWeek.isEmpty {
//                WeekView(week: RoutineWeek(week: "", check: [RoutineCheck](repeating: RoutineCheck(), count: routine.targetCount)))
                WeekView(week: routine.weeks[0], isSeletedWeek: false, selectedWeek: selectedWeek)
            }
            else {
                ForEach(filteredWeek){
                    week in
                        WeekView(week: week, isSeletedWeek: true, selectedWeek: selectedWeek)
                    }
            }
        }
        .frame(maxWidth: 320, alignment: .leading)
        .padding(16.0)
        .background(.white)
        .cornerRadius(14)
    }
}

struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView(routine: Routine.example, selectedWeek: "2023년 6월 2주차")
    }
}
