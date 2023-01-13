import SwiftUI

struct ThirdChapter: Story {
    var myStory: some Prose {
        /*#-code-walkthrough(1.finalStory)*/
        TitlePage {
            Picture(.wizardLibrary)
            Chapter(number: 3)
            Title("Third Story")
        }
        /*#-code-walkthrough(1.finalStory)*/
        /*#-code-walkthrough(2.finalStory)*/
        
        /*#-code-walkthrough(2.finalStory)*/

    }
}

struct ThirdChapterView_Previews : PreviewProvider {
    static var previews: some View {
        StoryNodePresenter(node: ThirdChapter().myStory.storyNode, book: MyStoryBook())
            .storyNodeBackgroundStyle()
    }
}
