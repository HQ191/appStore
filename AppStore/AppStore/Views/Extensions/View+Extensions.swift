import SwiftUI

extension View {
    func divider(
        alignment: Alignment = .bottom,
        color: Color = .gray.opacity(0.3),
        thickness: CGFloat = 1,
        edges: Edge.Set = .horizontal,
        padding: CGFloat? = nil
    ) -> some View {
        self.overlay(
            Rectangle()
                .frame(width: nil, height: 1, alignment: alignment)
                .foregroundColor(color)
                .padding(edges, padding),
            alignment: alignment
        )
    }
    
    func circularBorder(
        radius: CGFloat = .nano,
        color: Color = Color.gray.opacity(0.3),
        width: CGFloat = .hairLine
    ) -> some View {
        self.overlay(
            RoundedRectangle(cornerRadius: radius)
                .stroke(color, lineWidth: width)
        )
    }
}
