import SwiftUI
//#-learning-code-snippet(pandaPlacesView.mapkit)

/*#-code-walkthrough(pandaPlacesView)*/
struct PandaPlacesView: View {
    /*#-code-walkthrough(pandaPlacesView)*/
    /*#-code-walkthrough(pandaPlacesView.fetcher)*/
    @EnvironmentObject var fetcher: PandaPlacesFetcher
    /*#-code-walkthrough(pandaPlacesView.fetcher)*/
    
    //#-learning-code-snippet(pandaPlacesView.region)
    
    var body: some View {
        VStack {
            //#-learning-code-snippet(pandaPlacesView.map)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .navigationBarHidden(true)
        //#-learning-code-snippet(pandaPlacesView.task)
    }
}

struct PandaPlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PandaPlacesView()
            .environmentObject(PandaPlacesFetcher())
    }
}
