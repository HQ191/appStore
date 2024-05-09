import SwiftUI

extension View {
    func bottomDivider(
        color: Color = Color.gray,
        thickness: CGFloat = 1
    ) -> some View {
        self.overlay(
            Divider()
                .background(color)
                .frame(height: thickness)
                .edgesIgnoringSafeArea(.horizontal)
                .padding(.top, 8) // Adjust as needed
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
