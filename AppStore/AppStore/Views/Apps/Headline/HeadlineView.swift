import SwiftUI

struct HeadlineView: View {
    let headline: HeadLineDto
    let rowWidth: CGFloat
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(headline.items) { headline in
                    HeadlineItemView(headLine: headline, width: rowWidth) {
                        print("Headline tapped with title: \(headline.headline)")
                    }
                }
            }
            .padding(.trailing, .xxs)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .padding(.vertical, .xxs)
    }
}
