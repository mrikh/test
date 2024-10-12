//
//  ContentView.swift
//  asdasd
//
//  Created by Mayank Rikh on 11/10/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: SquareOptionsContainerViewModel

    var body: some View {
        HStack(spacing: 0.0){
            SquareOptionView(title: viewModel.firstOptionTitle, voteRatio: $viewModel.firstVoteRatio, color: .green){
                viewModel.firstVoteRatio = random(min: 0.0, max: 1.0)
            }
            Rectangle()
                .frame(width: 2.0)
                .foregroundColor(
                    .black
                )
            SquareOptionView(title: viewModel.secondOptionTitle, voteRatio: $viewModel.secondVoteRatio, color: .red){
                viewModel.secondVoteRatio = random(min: 0.0, max: 1.0)
            }
        }
        .clipShape(
            RoundedRectangle(cornerSize: .init(width: 10.0, height: 10.0))
        )
        .overlay(
            RoundedRectangle(cornerSize: .init(width: 10.0, height: 10.0))
                .stroke(lineWidth: 2.0)
        )
        .padding(.vertical, 10.0)
    }
    
    func random(min: Double, max: Double) -> Double {
        return random * (max - min) + min
    }
    
    var random: Double {
        return Double(arc4random()) / 0xFFFFFFFF
    }
}
