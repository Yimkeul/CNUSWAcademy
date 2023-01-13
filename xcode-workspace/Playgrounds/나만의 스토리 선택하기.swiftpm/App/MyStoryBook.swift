import SwiftUI

struct MyStoryBook: StoryBook {
    /*#-code-walkthrough(0.titlePage)*/
    var title = "My Brilliant Story"
    /*#-code-walkthrough(0.titlePage)*/
    /*#-code-walkthrough(1.titlePage)*/
    var author = "Name"
    /*#-code-walkthrough(1.titlePage)*/
    /*#-code-walkthrough(2.titlePage)*/
    var coverImage : CoverImage = .fantasy
    /*#-code-walkthrough(2.titlePage)*/
    
    var stories: some Stories {
        TitleCover()
        CopyrightPage()
        DedicationPage()
        FirstChapter()
        SecondChapter()
        ThirdChapter()
    }
}

