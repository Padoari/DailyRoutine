//
//  RoutineView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import SwiftUI

struct RoutineView: View {
    
    let routine: Routine
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8.0) {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(routine.title)
                    .font(.headline)
                Text(routine.description)
                    .font(.caption)
                Text("\(routine.targetCount)")
            }
            ForEach(routine.weeks)
            { week in
                WeekView(week: week)
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
        RoutineView(routine: Routine.example)
    }
}
