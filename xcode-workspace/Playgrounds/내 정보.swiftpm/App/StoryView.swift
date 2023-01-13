import SwiftUI

struct StoryView: View {
    var body: some View {
        /*#-code-walkthrough(StoryView.starterCode)*/
        /*#-code-walkthrough(StoryView.scrollView)*/
        ScrollView {
            /*#-code-walkthrough(StoryView.scrollView)*/
            VStack(alignment: .leading) {
                /*#-code-walkthrough(StoryView.intro)*/
                /*#-code-walkthrough(StoryView.group)*/
                Text("Your Story")
                    .font(.largeTitle)
                Text("Yimkeul")
                /*#-code-walkthrough(StoryView.intro)*/
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                /*#-code-walkthrough(StoryView.group)*/
                /*#-code-walkthrough(StoryView.story)*/
                Text("Everyone knows that I just love …")
                    .padding([.top, .bottom])
                Text("My super power is …")
                    .padding(.bottom)

                /*#-code-walkthrough(StoryView.story)*/
                /*#-code-walkthrough(StoryView.image)*/
                Group {
                    HStack {
                        Text("In my life, I feel most grateful for …")
                        Image("미모지")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                    }
                }
     
                /*#-code-walkthrough(StoryView.image)*/
                /*#-code-walkthrough(StoryView.highlight)*/
                Group {
                    Divider()
                    Text("Get the most out of this section")
                        .font(.title3)
                        .foregroundColor(.cyan)
                    Text("This is where you write something you really want to emphasize. The thing you want people to take away after reading your story.")
                        .italic()
                    Divider()
                }

                /*#-code-walkthrough(StoryView.highlight)*/
                
            }
            /*#-code-walkthrough(StoryView.modifiers)*/
            .padding()
            .frame(maxWidth: .infinity)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()
            
            /*#-code-walkthrough(StoryView.secondArticle)*/
            VStack(alignment: .leading) {
                Group {
                    Text("Another Story")
                        .font(.largeTitle)
                    Text("Author")
                        .font(.subheadline)
                        .foregroundColor(.secondary)   
                    Divider()
                }
                Group {
                    HStack {
                        Text("In my life, I feel most grateful for …")
                        Image("Placeholder")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                    }
                }
                
                /*#-code-walkthrough(StoryView.image)*/
                /*#-code-walkthrough(StoryView.highlight)*/
                Group {
                    Divider()
                    Text("Get the most out of this section")
                        .font(.title3)
                        .foregroundColor(.cyan)
                    Text("This is where you write something you really want to emphasize. The thing you want people to take away after reading your story.")
                        .italic()
                    Divider()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()
            VStack(alignment: .leading) {
                Group {
                    Text("Another Story")
                        .font(.largeTitle)
                    Text("Author")
                        .font(.subheadline)
                        .foregroundColor(.secondary)   
                    Divider()
                }
                Group {
                    HStack {
                        Text("In my life, I feel most grateful for …")
                        Image("Placeholder")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                    }
                }
                
                /*#-code-walkthrough(StoryView.image)*/
                /*#-code-walkthrough(StoryView.highlight)*/
                Group {
                    Divider()
                    Text("Get the most out of this section")
                        .font(.title3)
                        .foregroundColor(.cyan)
                    Text("This is where you write something you really want to emphasize. The thing you want people to take away after reading your story.")
                        .italic()
                    Divider()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()

            /*#-code-walkthrough(StoryView.secondArticle)*/
        }
        .background(Image("Purple").opacity(0.5))
        /*#-code-walkthrough(StoryView.modifiers)*/
        /*#-code-walkthrough(StoryView.starterCode)*/
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
