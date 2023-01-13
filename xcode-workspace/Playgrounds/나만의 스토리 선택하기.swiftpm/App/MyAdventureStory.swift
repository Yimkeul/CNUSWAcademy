import SwiftUI

struct CoverPage: Story {
    var myStory: some Prose {
        ChoicePage {
            /*#-code-walkthrough(2.adventureStory)*/
            Picture(.astronautOopsy)
            Title("Creating your own Story")
            "Create a story with multiple possible endings."
            "Add different choices for the outcome of this story."
            Choice(title: "Begin Your Story", destination: 1)
            /*#-code-walkthrough(2.adventureStory)*/
        }
    }
}

struct PageOne: Story {
    var myStory: some Prose {
        ChoicePage {
            /*#-code-walkthrough(3.adventureStory)*/

            /*#-code-walkthrough(3.adventureStory)*/
            /*#-code-walkthrough(4.adventureStory)*/

            /*#-code-walkthrough(4.adventureStory)*/

        }
    }
}

/*#-code-walkthrough(5.adventureStory)*/
struct PageTwo: Story {
    var myStory: some Prose {
        ChoicePage {
            
        }
    }
}

struct PageThree: Story {
    var myStory: some Prose {
        ChoicePage {
            
            /*#-code-walkthrough(4.codeChoices)*/

            /*#-code-walkthrough(4.codeChoices)*/
        }
    }
}
/*#-code-walkthrough(5.adventureStory)*/

/*#-code-walkthrough(2.codeChoices)*/
//#-learning-task(codeChoices)
/*#-code-walkthrough(2.codeChoices)*/




struct MyAdventureBook: StoryBook {
    var author = "Author"
    var title = "Choose Your Own Story"
    /*#-code-walkthrough(4.doorAdventure)*/
 //change var to pages
    var stories: some Stories {
        CoverPage() // 0
        PageOne() // 1
        /*#-code-walkthrough(3.doorAdventure)*/
        PageTwo() // 2
        PageThree() // 3
        /*#-code-walkthrough(3.doorAdventure)*/
        /*#-code-walkthrough(3.codeChoices)*/
        
        /*#-code-walkthrough(3.codeChoices)*/


    }
    /*#-code-walkthrough(4.doorAdventure)*/
}

struct MyAdventureStory_Previews : PreviewProvider {
    static var previews: some View {
        MyAdventureStoryView()
            .storyNodeBackgroundStyle()
    }
}
