//
//  WeeklyView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import SwiftUI

struct WeeklyView: View {
    @EnvironmentObject var routineData: RoutineData
    
    var week = "6월 3주"
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text(week)
                    .font(.largeTitle)
                    .bold()
                
                ForEach(routineData.routines)
                { routines in
                    RoutineView(routine: routines)
                }
                
                Spacer()
            }
            .padding(.vertical, 16.0)
        }
    }
}

struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView()
            .environmentObject(RoutineData())
    }
}
