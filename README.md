## 📱 SwiftUI VIPER Architecture Demo

This project demonstrates building a SwiftUI app using the **VIPER architecture** with support for:

* 📦 Clean separation of concerns
* 🧾 Alamofire-based API integration
* 🧭 Navigation using Coordinators
* 👤 Register & Login screens
* 📅 Custom DatePicker handling
* 🌈 Dynamic UI layouts using GeometryReader abstraction
* 🔔 Custom Alert with blurred background
* 🆎 Custom Fonts integration

---

### 🗂 Project Structure (VIPER + SwiftUI)

```bash
├── Modules
│   ├── Register
│   │   ├── View
│   │   ├── Interactor
│   │   ├── Presenter
│   │   ├── Entity
│   │   └── Router
│   └── Home
│       └── ...
│
├── Common
│   ├── Fonts
│   ├── Extensions
│   ├── Utilities
│   ├── Network
│   │   ├── APIManager.swift
│   │   └── URLConstants.swift
│   └── UI
│       ├── BlurView.swift
│       └── CustomAlertView.swift
│
├── App
│   ├── Coordinator
│   ├── ScreenSizeManager.swift
│   └── AppDelegate.swift
```

---

### 🧰 Features Implemented

#### ✅ Register API (Alamofire + VIPER)

* Validates input
* Sends JSON to AWS Lambda
* Parses response via `Decodable`
* Handles status code and empty body scenarios

#### ✅ Coordinator Pattern

* Screen transitions like:

  * `Home → Register`
  * `Register → Home`
  * On processing all screens

#### ✅ Custom Alert

* Shows in center of screen
* Background blur using `UIVisualEffectView`
* Dismisses with a button or tap
* On Processing

#### ✅ Date Picker Handling

* Custom text field opens date picker
* Auto-dismiss on date select

#### ✅ Custom Fonts

* Added `.ttf` fonts to project
* Registered in `Info.plist`
* Accessed using `Font.custom(...)`
* Centralized in FontManager using enums

---

### 📦 Dependencies

* [Alamofire](https://github.com/Alamofire/Alamofire) – Networking
* SwiftUI (iOS 15+ minimum target)

---

### 🚀 How to Run

1. Clone the repo
2. Run `pod install` if Cocoapods are used
3. Open `.xcworkspace` in Xcode
4. Build & run on iOS 15.0+ device or simulator

---

### 🧪 Sample Alert Use

```swift
CustomAlertView(title: "Success", message: "User registered successfully!") {
    // Dismiss logic
}
```

---

### 📌 Notes

* `ScreenSizeManager` provides screen-level geometry access without repetitive `GeometryReader` usage.
* API errors are handled centrally and shown using alerts.
