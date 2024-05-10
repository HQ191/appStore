import SwiftUI

struct TabbarView: View {
    @State private var selectedTab = 2

    var body: some View {
        TabView(selection: $selectedTab) {
            TodayView()
                .tabItem {
                    Image(systemName: "doc.richtext")
                    Text(Strings.today)
                }
                .tag(0)
            
            GamesView()
                .tabItem {
                    Image(systemName: "sportscourt.fill")
                    Text(Strings.games)
                }
                .tag(1)
            
            AppsView(viewModel: .init())
                .tabItem {
                    Image(systemName: "square.stack.3d.up.fill")
                    Text(Strings.apps)
                }
                .tag(2)
            
            ArcadeView()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text(Strings.arcade)
                }
                .tag(3)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text(Strings.search)
                }
                .tag(4)
        }
    }
    
    private typealias Strings = L10n.TabbarView
}
