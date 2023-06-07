//
//  RoutineEditorView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/07.
//

import SwiftUI

struct RoutineEditorView: View {
    @Binding var routine: Routine
    var isNew = false

    @EnvironmentObject var routineData: RoutineData
    @Environment(\.dismiss) private var dismiss
    
    @State private var routineCopy = Routine()
    @State private var isEditing = false
    
    var body: some View {
        RoutineDetailView(routine: $routineCopy, isEditing: isNew ? true : isEditing)
            .toolbar{
                ToolbarItem(placement: .cancellationAction){
                    if isNew{
                        Button("Cancel"){
                            dismiss()
                        }
                    }
                }
                ToolbarItem{
                    Button{
                        if isNew{
                            
                            routineData.routines.append(routineCopy)
                            
                            dismiss()
                        } else {
                            if isEditing {
                                withAnimation{
                                    routine = routineCopy
                                }
                            }
                            isEditing.toggle()
                        }
                    } label: {
                        Text(isNew ? "Add" : (isEditing ? "Done" : "Edit"))
                    }
                }
            }
            .onAppear {
                routineCopy = routine
            }
    }
}

struct RoutineEditorView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineEditorView(routine: .constant(Routine()))
    }
}
