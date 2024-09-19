# Moonshot iOS App

Moonshot is an iOS app that lets users dive deep into NASA's historic Apollo space program. Learn about the missions that made history and the astronauts who took humankind to the moon. This project explores SwiftUI concepts such as navigation, grid layouts, and code organization with Swift’s `Codable` to decode JSON data.

## Features

- **Learn About NASA's Apollo Program**: Discover details about the Apollo missions and the astronauts who participated.
- **Beautiful Layout**: The app features a responsive grid layout showcasing mission patches, launch dates, and key details.
- **Navigation**: Tap on any mission to see detailed information about the mission, its objectives, and the crew.
- **Custom Styling**: The app utilizes a custom dark theme with stylized backgrounds and crisp, modern typography.

## Screenshots

![Untitled design](https://github.com/user-attachments/assets/f4f52110-6120-402b-9c81-84ff30324fd5)

## Key Concepts

This app is a practical learning experience for:
- **SwiftUI Navigation**: Using `NavigationStack` and `NavigationLink` to build a structured user interface with dynamic navigation between views.
- **Lazy Grids**: Efficient use of `LazyVGrid` to display mission information in a responsive grid layout.
- **Decoding JSON**: Use of Swift's `Codable` to parse local JSON files containing mission and astronaut data.
- **Clean Code Organization**: Refactoring complex views into smaller, reusable components, while leveraging computed properties for better readability.
- **Image Handling**: Managing and displaying images in SwiftUI, ensuring they fit neatly within their frames.

## How to Use

1. **Browse Missions**: On the main screen, you’ll see a grid of NASA Apollo missions. Each mission is represented by its official patch, name, and launch date.
2. **Mission Details**: Tap on any mission to see detailed information about the mission objectives, launch details, and astronauts.
3. **Astronaut Information**: In the mission details, view profiles of the astronauts involved in the mission, including their career highlights and contributions to space exploration.

## Getting Started

### Prerequisites

- Xcode 14 or later
- iOS 16.0 or later

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/moonshot-app.git
    ```
2. Open the project in Xcode:
    ```bash
    cd moonshot-app
    open Moonshot.xcodeproj
    ```
3. Run the app on your simulator or physical device.

## Code Overview

The app consists of several components, with **ContentView** being the main entry point. Here’s a brief breakdown of the key elements:

- **ContentView**: Displays a grid of missions using `LazyVGrid`. Each mission is shown with its patch, name, and launch date. Tapping a mission navigates to the `MissionView`.
- **MissionView**: A detailed view displaying more information about the selected mission and its astronauts.
- **Astronauts and Missions JSON**: Two JSON files (`astronauts.json` and `missions.json`) provide data about the astronauts and missions, which are decoded using Swift’s `Codable` protocol.
- **Custom Styling**: The app includes a light and dark background styling, custom font adjustments, and padding to enhance the user experience.

### Custom Background Styling

The app introduces custom light and dark backgrounds:
```swift
extension ShapeStyle where Self == Color {
    static var lightBackground: Color {
        Color(red: 239 / 255, green: 239 / 255, blue: 244 / 255)
    }

    static var darkBackground: Color {
        Color(red: 30 / 255, green: 30 / 255, blue: 30 / 255)
    }
}
```

### LazyVGrid Layout

The mission grid layout is powered by `LazyVGrid`, which adapts to different screen sizes for a responsive design:
```swift
let columns = [GridItem(.adaptive(minimum: 150))]
```

## Future Enhancements

- **Detailed Astronaut Profiles**: Expand on astronaut information with photos and career timelines.
- **Search Functionality**: Allow users to search for specific missions or astronauts.
- **Launch Reminders**: Add functionality to set reminders for future mission anniversaries.
