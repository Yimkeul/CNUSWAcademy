import SwiftUI

struct DedicationPage: Story {
    var myStory: some Prose {
        /*#-code-walkthrough(1.dedication)*/
        PageBreak()
        /*#-code-walkthrough(1.dedication)*/
    }
}






struct DedicationPage_Previews : PreviewProvider {
    static var previews: some View {
        StoryNodePresenter(node: DedicationPage().myStory.storyNode, book: MyStoryBook())
            .storyNodeBackgroundStyle()
    }
}
