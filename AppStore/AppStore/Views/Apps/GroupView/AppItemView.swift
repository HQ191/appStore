import SwiftUI

struct AppItemView: View {
    let data: AppItemDto
    
    var body: some View {
        HStack {
            data.icon
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .xl, height: .xl)
                .clipShape(RoundedRectangle(cornerRadius: .nano))
                .circularBorder(radius: .nano)
            VStack(alignment: .leading) {
                Text(data.name)
                    .font(.callout)
                Text(data.description)
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            AppStateButton(appState: data.state, style: .solid)
        }
    }
}
