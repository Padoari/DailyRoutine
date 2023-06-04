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
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(routine.title)
                    .font(.headline)
                Text(routine.description)
                    .font(.caption)
            }
            HStack(spacing: 6.0){ // 체크 수만큼 상태에 맞게 보여줘야함
                Circle()
                    .frame(width: 24.0, height: 24.0)
                    .foregroundColor(.gray)
                Circle()
                    .frame(width: 24.0, height: 24.0)
                    .foregroundColor(.gray)
            }
        }
        .frame(maxWidth: 300, alignment: .leading)
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
