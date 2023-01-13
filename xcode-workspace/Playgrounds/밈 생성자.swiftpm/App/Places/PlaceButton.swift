import SwiftUI

/*#-code-walkthrough(placeButton)*/
struct PlaceButton: View {
    var place: PandaPlace
    /*#-code-walkthrough(placeButton)*/
    
    @State private var popoverSize = CGSize(width: 300, height: 300)
    //#-learning-code-snippet(placeButton.isShowingPopover)
    
    var body: some View {
        Button(action: {
            //#-learning-code-snippet(placeButton.isShowingPopoverTrue)
        }, label: {
            Image(systemName: "pawprint.circle.fill")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.white, .blue)
                //#-learning-code-snippet(placeButton.fontAnimation)
        })
        //#-learning-code-snippet(placeButton.presentPopover)
    }
}

