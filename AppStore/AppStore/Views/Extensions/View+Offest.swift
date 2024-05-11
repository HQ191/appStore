import SwiftUI

extension View {
    func onOffsetChange(_ geometry: GeometryProxy, perform action: @escaping (CGPoint) -> Void) -> some View {
        transformAnchorPreference(key: MyKey.self, value: .bounds) {
            $0.append(MyFrame(id: "tableTopCell", frame: geometry[$1]))
        }
        .onPreferenceChange(MyKey.self) {
            action($0.first(where: { $0.id == "tableTopCell" })?.frame.origin ?? .zero)
        }
    }
}

private struct MyFrame : Equatable {
    let id : String
    let frame : CGRect

    static func == (lhs: MyFrame, rhs: MyFrame) -> Bool {
        lhs.id == rhs.id && lhs.frame == rhs.frame
    }
}

private struct MyKey : PreferenceKey {
    typealias Value = [MyFrame]

    static var defaultValue: [MyFrame] = []

    static func reduce(value: inout [MyFrame], nextValue: () -> [MyFrame]) {
        value.append(contentsOf: nextValue())
    }
}
