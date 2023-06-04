//
//  CheckView.swift
//  DailyRoutine
//
//  Created by jeongyun on 2023/06/05.
//

import SwiftUI

struct CheckView: View {
    
    @State var isCompleted: Bool
    
    var body: some View {
        Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
            .font(.system(size: 24))
            .foregroundColor(isCompleted ? Color("AccentColor") : .gray)
            .onTapGesture {
                isCompleted.toggle()
            }
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView(isCompleted: true)
    }
}
