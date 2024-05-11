import SwiftUI

struct HeadlineView: View {
    let headline: HeadLineDto
    let rowWidth: CGFloat
    let onHeadlineTap: (HeadLineItemDto) -> Void
    let onAppTap: (HeadLineItemDto) -> Void
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(headline.items) { headline in
                    HeadlineItemView(headLine: headline, width: rowWidth) {
                        onHeadlineTap(headline)
                    } onAppTap: {
                        onAppTap(headline)
                    }
                }
            }
            .padding(.trailing, .xxs)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}
