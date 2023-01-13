import SwiftUI

/*#-code-walkthrough(HomeView.struct)*/
struct HomeView: View {
    /*#-code-walkthrough(HomeView.struct)*/
    /*#-code-walkthrough(HomeView.views)*/
    var body: some View {
        VStack {
            Text("All About")
            /*#-code-walkthrough(HomeView.modifiers)*/
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            /*#-code-walkthrough(HomeView.modifiers)*/
            /*#-code-walkthrough(HomeView.Image)*/
            Image("미모지")
            /*#-code-walkthrough(HomeView.Image)*/
            /*#-code-walkthrough(HomeView.Image.resizable)*/
                .resizable()
                .scaledToFit()
            /*#-code-walkthrough(HomeView.Image.resizable)*/
            /*#-code-walkthrough(HomeView.Image.modifiers)*/
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.white, style: StrokeStyle(lineWidth: 15))
                )    .padding(EdgeInsets(
                    top: 30, leading: 30, bottom: 40, trailing: 30))
                
            


            HStack {
                Image(systemName: "sparkles")
                    .foregroundColor(.yellow)
                Text("Yimkeul")
                /*#-code-walkthrough(HomeView.Text)*/
                    .font(.custom(FontNames.arial, size: 40))
                    .foregroundColor(.black)
                    .padding(30)
                    .background(Color(red :0.95, green: 0.95, blue: 0.95))
                    .cornerRadius(15, antialiased: true)
                /*#-code-walkthrough(HomeView.Text.modifiers)*/
                /*#-code-walkthrough(HomeView.Text.moreModifiers)*/
                    .shadow(color: .blue, radius: 30)
                Image(systemName: "sparkles")
                    .foregroundColor(.yellow)
            }

            
            /*#-code-walkthrough(HomeView.Image.modifiers)*/
            /*#-code-walkthrough(omeView.Image.overlay)*/
            
            /*#-code-walkthrough(omeView.Image.overlay)*/
            /*#-code-walkthrough(HomeView.Text)*/
      
            /*#-code-walkthrough(HomeView.Text.moreModifiers)*/
            
            /*#-code-walkthrough(HomeView.stacksOnStacks)*/
            
            /*#-code-walkthrough(HomeView.stacksOnStacks)*/
        }
    
        /*#-code-walkthrough(HomeView.Image.background)*/
        
        /*#-code-walkthrough(HomeView.Image.background)*/
        /*#-code-walkthrough(HomeView.Image.clip)*/
        .background(Image("Blue"))

        /*#-code-walkthrough(HomeView.Image.clip)*/
        
    }
    /*#-code-walkthrough(HomeView.views)*/
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct FontNames {
    static var americanTypwriter = "American Typewriter"
    static var arial = "Arial"
    static var baskerville = "Baskerville"
    static var chalkduster = "Chalkduster"
    static var courier = "Courier"
    static var georgia = "Georgia"
    static var helvetica = "Helvetica"
    static var palatino = "Palatino"
    static var zapfino = "Zapfino"
}
