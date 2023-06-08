//
//  WeeklyView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/02.
//

import SwiftUI

struct WeeklyView: View {
    @EnvironmentObject var routineData: RoutineData
    @State private var isAddingNewRoutine = false
    @State private var newRoutine = Routine()
    @State private var selectedDate = Date()
    private let calendar = Calendar.current
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                HStack {
                    Text("\(formattedDate(selectedDate))")
                        .font(.headline)
                    
                    Spacer()
                    
                    HStack(spacing: 16.0) {
                        Button {
                            self.selectedDate = self.calendar.date(byAdding: .day, value: -7, to: self.selectedDate) ?? self.selectedDate
                            newRoutine.AddWeek(week: "\(formattedDate(selectedDate))")
                        } label: {
                            Image(systemName: "chevron.left")
                        }
                        
                        Button {
                            self.selectedDate = self.calendar.date(byAdding: .day, value: 7, to: self.selectedDate) ?? self.selectedDate
                            newRoutine.AddWeek(week: "\(formattedDate(selectedDate))")
                        } label: {
                            Image(systemName: "chevron.right")
                        }
                    }
                }
                .padding(20.0)
                
                ScrollView{
                    VStack(spacing: 16.0) {
                        ForEach(routineData.routines) {
                            routines in
                            RoutineView(routine: routines, selectedWeek: "\(formattedDate(selectedDate))")
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.vertical, 16.0)
        }
        .navigationTitle("Weekly Routine")
        .toolbar{
            Button{
                newRoutine = Routine()
                isAddingNewRoutine = true
            } label: {
                Image(systemName: "plus")
            }
        }
        .sheet(isPresented: $isAddingNewRoutine) {
            NavigationView {
                RoutineEditorView(routine: $newRoutine, isNew: true)
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
