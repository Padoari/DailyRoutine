//
//  WeekView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/05.
//

import SwiftUI

struct WeekView: View {
    @State var week: RoutineWeek
    var isSeletedWeek: Bool
    var selectedWeek: String
    
    var body: some View {
        HStack(spacing: 4.0){
            ForEach(week.check) { check in
                CheckView(isCompleted: check.isCompleted, isSeletedWeek: isSeletedWeek)
                    .onChange(of: check.isCompleted) { newValue in
//                      week.check.updateCompletionStatus()
                    print("111")
                    }
            }
            
            Spacer()
            
            if week.check.allSatisfy({ $0.isCompleted }) {
                Text("Completed!")
                    .foregroundColor(.accentColor)
                    .bold()
            }
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView(week: RoutineWeek(week: "2023년 6월 2주", check: [RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true), RoutineCheck(isCompleted: true)]), isSeletedWeek: true,selectedWeek: "2023년 6월 2주차")
    }
}
