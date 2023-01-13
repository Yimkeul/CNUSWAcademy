import SwiftUI

struct CopyrightsView: View {
    @State var author: String
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Text("Copyright ©  2022 \(author)")
                    .font(.system(size: 13, weight: .regular, design: .serif))
            }.padding(.vertical)
            Text("All rights reserved. No part of this book may be reproduced or used in any manner without the prior written permission of the copyright owner, except for the use of brief quotations in a book review.")
                .font(.system(size: 13, weight: .regular, design: .serif))
            Spacer()
        }
        .padding(.top, 75)
        .padding(.horizontal, 30)

    }
}
