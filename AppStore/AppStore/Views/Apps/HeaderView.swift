import SwiftUI

struct HeaderView: View {
    let profileImage: Image
    
    var body: some View {
        HStack {
            Text(Strings.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            profileImage
                .resizable()
                .frame(width: .sm, height: .sm)
                .clipShape(Circle())
        }
        .padding(.vertical, .xxxs)
    }
    
    private typealias Strings = L10n.Apps
}
