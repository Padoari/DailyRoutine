//
//  WeeklyView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import SwiftUI

struct WeeklyView: View {
    @EnvironmentObject var routineData: RoutineData
    @State private var selectedDate = Date()
    private let calendar = Calendar.current
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                HStack {
                    Button {
                        self.selectedDate = self.calendar.date(byAdding: .day, value: -7, to: self.selectedDate) ?? self.selectedDate
                    } label: {
                        Image(systemName: "chevron.left")
                    }

                    Text("\(formattedDate(selectedDate))")
                        .font(.headline)
                    
                    Button {
                        self.selectedDate = self.calendar.date(byAdding: .day, value: 7, to: self.selectedDate) ?? self.selectedDate
                    } label: {
                        Image(systemName: "chevron.right")
                    }
                }
                
                ForEach(routineData.routines)
                { routines in
                    RoutineView(routine: routines)
                }
                
                Spacer()
            }
            .padding(.vertical, 16.0)
        }
        .navigationTitle("Weekly Routine")
        .toolbar{
            Button{
                
            } label: {
                Image(systemName: "plus")
            }
        }
    }
    
    private func formattedDate(_ date: Date) -> String {
            let year = calendar.component(.year, from: date)
            let month = calendar.component(.month, from: date)
            let week = calendar.component(.weekOfMonth, from: date)
            return "\(year)년 \(month)월 \(week)주차"
        }
}

struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView()
            .environmentObject(RoutineData())
    }
}
