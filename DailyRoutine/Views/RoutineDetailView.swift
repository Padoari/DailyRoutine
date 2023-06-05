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
    
    var body: some View {
        Form{
            VStack(alignment: .leading) {
                Text(routine.title)
                    .font(.title2)
                    .bold()
                
                Text(routine.description)
                    .font(.footnote)
    
                Stepper(value: $routine.targetCount){
                    Text("\(routine.targetCount)")
                }
            }
        }
        
    }
}

struct RoutineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineDetailView(routine: .constant(Routine.example), isEditing: false)
    }
}
