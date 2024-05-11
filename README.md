# Introduction
This iOS project is a mock UI for app store. Representing the 'Apps' tab in the app store.

# Stack
* Swift 
* SwiftUI
* Combine

# Setup Steps
1. Clone project
2. Setup swiftGen in your system using HomeBrew
    (Make sure that swiftGen is in the following directory **/opt/homebrew/bin/swiftgen**)
    
# Tools
* SwiftGen for managing and accessing resources - https://github.com/SwiftGen/SwiftGen 

# Structure - MVVM

## View
The project follows MVVM architecture logic. All the data being used in mocked. However the mocked data can be easily be replaced with network call data. The `Apps` view also follow the dynamic content approach where the placement of the content can be changed according to the data. <br/>
For making view the project is following a modular approach where the view is broken down into smaller components. Each component is a separate view file. <br/>
The view is also localized using the `Localizable` file.<br/>
All the views are populated with their mocked dtos.

## Asset
The assets are broken down to Color, Image. <br/>
For localization a separate strings file should be created for each view under localizables/ <br/>
For using an asset in a view file a private `typealias` of the respective type should first be created
