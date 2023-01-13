import SwiftUI

struct FirstChapter: Story {
    var myStory: some Prose {
        TitlePage {
            Picture(.spaceWhale)
            Chapter(number: 1)
            /*#-code-walkthrough(2a.writeTheStory)*/
            Title("Your Title")
            /*#-code-walkthrough(2a.writeTheStory)*/
        }
        "📝"
        /*#-code-walkthrough(2b.writeTheStory)*/

        /*#-code-walkthrough(2b.writeTheStory)*/
        /*#-code-walkthrough(4.writeTheStory)*/
        
        /*#-code-walkthrough(4.writeTheStory)*/

    }
}



struct FirstChapterView_Previews : PreviewProvider {
    static var previews: some View {
        StoryNodePresenter(node: FirstChapter().myStory.storyNode, book: MyStoryBook())
            .storyNodeBackgroundStyle()
    }
}



