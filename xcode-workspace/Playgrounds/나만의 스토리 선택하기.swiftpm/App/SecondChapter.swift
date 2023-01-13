import SwiftUI

struct SecondChapter: Story {
    var myStory: some Prose {
        TitlePage {
            /*#-code-walkthrough(0.multipage)*/
            Picture(.elfFairyLand)
            Chapter(number: 2)
            Title("Second Story")
            /*#-code-walkthrough(0.multipage)*/
        }
        /*#-code-walkthrough(1.multipage)*/

        /*#-code-walkthrough(1.multipage)*/
    }
}

struct SecondChapterView_Previews : PreviewProvider {
    static var previews: some View {
        StoryNodePresenter(node: SecondChapter().myStory.storyNode, book: MyStoryBook())
            .storyNodeBackgroundStyle()
    }
}
