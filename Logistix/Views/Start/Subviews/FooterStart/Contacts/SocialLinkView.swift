import SwiftUI

struct SocialLinkView: View {
    let image: String
    let stringURL: String
    
    var body: some View {
        Link(destination: URL(string: stringURL)!, label: {
            Image(image)
                .resizable()
                .frame(width: 23, height: 23)
        })
    }
}

#Preview {
    SocialLinkView(image: "facebook.info", stringURL: "")
}
