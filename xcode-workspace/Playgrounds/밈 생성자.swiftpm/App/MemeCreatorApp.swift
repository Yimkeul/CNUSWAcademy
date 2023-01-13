import SwiftUI
//#-learning-task(dataFetcherApp)

@main
struct MemeCreatorApp: App {
    /*#-code-walkthrough(1.pandaCollectionFetcher)*/
    @StateObject private var fetcher = PandaCollectionFetcher()
    /*#-code-walkthrough(1.pandaCollectionFetcher)*/
    //#-learning-code-snippet(memeCreatorApp.placesFetcher)
    
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                /*#-code-walkthrough(1.environmentObject)*/
                MemeCreator()
                    .environmentObject(fetcher)
                /*#-code-walkthrough(1.environmentObject)*/
            }
            .navigationViewStyle(.stack)
            /*#-code-walkthrough(1.taskModifier)*/
            //#-learning-code-snippet(memeCreatorApp.taskModifier)
            /*#-code-walkthrough(1.taskModifier)*/
        }
    }
}
