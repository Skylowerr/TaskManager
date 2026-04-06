# TaskManager ✅

A SwiftUI task management app featuring onboarding screens, monthly review tracking, and a clean component-based UI with custom avatar views.

---

## 📁 Project Structure

```
TaskManager/
├── Views/
│   ├── GettingStarted View/
│   │   ├── BottomOfGettingStartedView.swift  # Bottom section of onboarding screen
│   │   ├── GettingStartedView.swift          # Main onboarding / welcome screen
│   │   ├── ImageHeader.swift                 # Header with image component
│   │   ├── ManageTasksTextView.swift         # Onboarding text section
│   │   ├── SquareCircle.swift                # Decorative shape component
│   │   └── StartActionView.swift             # CTA button / start action
│   └── Monthly Review View/
│       ├── BottomView.swift                  # Bottom section of review screen
│       ├── CircleImageView.swift             # Circular avatar with stroke & shadow
│       ├── CurrentTaskView.swift             # Active task display
│       ├── MonthlyReviewTitleView.swift      # Monthly review header
│       ├── MonthlyReviewView.swift           # Main monthly review screen
│       ├── TaskSummaryView.swift             # Summary of completed tasks
│       ├── TitleView.swift                   # Reusable title component
│       └── TopAvatarView.swift               # Top avatar row component
├── ImageConstants.swift                      # Centralized image asset references
├── Assets.xcassets                           # Images, colors, icons
└── TaskManagerApp.swift                      # App entry point
```

---

## 🏗️ Architecture & Design

Component-based SwiftUI design with clear screen separation:

| Section | Description |
|---------|-------------|
| **Getting Started** | Onboarding flow with decorative shapes, header image, and CTA |
| **Monthly Review** | Dashboard showing tasks, avatars, summaries, and progress |
| **Shared** | `ImageConstants` for centralized asset management |

---

## 🔵 Highlight: `CircleImageView`

A reusable circular avatar component with configurable stroke color, size, and shadow:

```swift
struct CircleImageView: View {
    let color: Color
    let imageName: String
    let size: CGFloat
    let lineWidth: CGFloat
}
```

Used throughout the app to display user avatars with a consistent style:

```swift
CircleImageView(color: .red, imageName: "person1", size: 200, lineWidth: 3)
```

> 💡 Making image views reusable with parameters instead of duplicating styling is a core SwiftUI best practice.

---

## 📱 Screens

| Screen | Description |
|--------|-------------|
| 🚀 `GettingStartedView` | Welcome / onboarding screen with decorative UI |
| 📅 `MonthlyReviewView` | Monthly task overview with avatars and summaries |
| ✅ `CurrentTaskView` | Displays the currently active task |
| 📊 `TaskSummaryView` | Summary of completed vs pending tasks |

---

## 📚 What I Learned

- 🔵 **Custom shape components** — building `SquareCircle` decorative elements from scratch
- 👤 **Reusable image views** — `CircleImageView` with stroke, shadow, and size parameters
- 📋 **Screen decomposition** — breaking complex screens into small, focused subviews
- 🗂️ **Centralized constants** — using `ImageConstants` to avoid magic strings
- 🎨 **ZStack layouts** — layering background colors and components for depth

---

## 🚀 Getting Started

### Requirements

- Xcode 15+
- iOS 17+
- Swift 5.9+

### Run

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/TaskManager.git
   ```
2. Open `TaskManager.xcodeproj` in Xcode.
3. Select a simulator and press **Run** (`⌘R`).

> No API keys or external dependencies required.

---
