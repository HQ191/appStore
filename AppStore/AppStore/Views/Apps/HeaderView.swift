import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text(Strings.title)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: .sm, height: .sm)
                .clipShape(Circle())
        }
        .padding(.vertical, .xxxs)
    }
    
    private typealias Strings = L10n.Apps
}
