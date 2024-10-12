//
//  SquareOptionView.swift
//  Poll-It
//
//  Created by Mayank Rikh on 07/09/2024.
//

import SwiftUI

struct SquareOptionView: View {
    
    let title: String
    @Binding var voteRatio: Double
    let color: Color
    let tapAction: ()->()
    
    var body: some View {
        VStack(spacing: 10.0){
            Text(title)
            Text(
                "\(voteRatio * 100, specifier: "%.2f")%"
            )
        }
        .padding(25.0)
        .frame(maxWidth: .infinity, alignment: .bottom)
        .background{
            color
                .containerRelativeFrame(.vertical, alignment: .bottom) { length, _ in
                    return length * voteRatio
                }
                .animation(.bouncy, value: voteRatio)
                .frame(alignment: .bottom)
        }
        .onTapGesture {
            tapAction()
        }
    }
}

#Preview {
    SquareOptionView(title: "", voteRatio: .constant(0.4), color: .green, tapAction: {})
}
