//
//  RoutineDetailView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/05.
//

import SwiftUI

struct RoutineDetailView: View {
    @Binding var routine: Routine
    let isEditing: Bool
    
    func incrementStep(){
        routine.targetCount += 1
        routine.weeks = [RoutineWeek(week: "Default", check: Array(repeating: RoutineCheck(), count: routine.targetCount).map { _ in RoutineCheck() })] // map -> 새로운 인스턴스 생성

    }
    
    func decrementStep(){
        routine.targetCount -= 1
        routine.weeks = [RoutineWeek(week: "Default", check: Array(repeating: RoutineCheck(), count: routine.targetCount).map { _ in RoutineCheck() })]

    }
    

    var body: some View {
        Form{
            VStack(alignment: .leading) {
                if isEditing{
                    TextField("새로운 루틴", text: $routine.title)
                        .font(.title2)
                        .bold()
                } else {
                    Text(routine.title)
                        .font(.title2)
                        .bold()
                }
                
                if isEditing{
                    TextField("루틴을 설명해주세요", text: $routine.description)
                } else {
                    Text(routine.description)
                        .font(.footnote)
                }
                
                
                HStack {
                    Text("주당 횟수")
                    if isEditing{
                        Stepper(onIncrement: incrementStep,
                                onDecrement: decrementStep) {
                            Text("\(routine.targetCount)")
                        }
                    } else {
                        Text("\(routine.targetCount)")
                    }
                }
            }
        }
    }
}

struct RoutineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineDetailView(routine: .constant(Routine.example), isEditing: true)
    }
}
