import Foundation

class SquareOptionsContainerViewModel: ObservableObject{
    
    let firstOptionTitle: String
    let secondOptionTitle: String
    @Published var firstVoteRatio: Double
    @Published var secondVoteRatio: Double
    let firstOptionClickListener: ()->()
    let secondOptionClickListener: ()->()
    
    init(firstOptionTitle: String, secondOptionTitle: String, firstVoteRatio: Double, secondVoteRatio: Double, firstOptionClickListener: @escaping () -> Void, secondOptionClickListener: @escaping () -> Void) {
        self.firstOptionTitle = firstOptionTitle
        self.secondOptionTitle = secondOptionTitle
        self.firstVoteRatio = firstVoteRatio
        self.secondVoteRatio = secondVoteRatio
        self.firstOptionClickListener = firstOptionClickListener
        self.secondOptionClickListener = secondOptionClickListener
    }
}
