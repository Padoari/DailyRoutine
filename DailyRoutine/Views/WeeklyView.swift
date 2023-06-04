//
//  WeeklyView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import SwiftUI

struct WeeklyView: View {
    @EnvironmentObject var routineData: RoutineData
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                ForEach(routineData.routines)
                { routines in
                    RoutineView(routine: routines)
                }
            }
            .padding(.vertical, 16.0)
        }
        .navigationTitle("week")
    }
}

struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView()
            .environmentObject(RoutineData())
    }
}
