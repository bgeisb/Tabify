<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT HEADER -->
![tabify_banner](https://user-images.githubusercontent.com/36701166/211655185-1ac9fd7c-40f7-4cf4-9eba-07933b053b1b.png)


<!-- TABLE OF CONTENTS -->
## Table of contents

* [Description](#description)
* [Requirements](#requirements)
* [Installation](#installation)
    * [Swift Package Manager](#swift-package-manager) 
    * [CocoaPods](#cocoapods)
* [Usage](#usage)
    * [1. Create TabifyItems Enum](#1-create-tabifyitems-enum)
    * [2. Add Tabify View](#2-add-tabify-view)
* [Contributing](#contributing)
* [License](#license)


<!-- DESCRIPTION -->
## Description
`Tabify` is a SwiftUI view that elegantly utilizes interactive user interface elements to dynamically switch between multiple child views.
It is highly customizable and, due to its similarity to the native `TabView` SwiftUI component, very user-friendly and easy to use.


<!-- REQUIREMENTS -->
## Requirements

- SwiftUI
- iOS 13.0 or above

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- Installation -->
## Installation

### Swift Package Manager

The preferred way of installing `Tabify` is via the [Swift Package Manager](https://swift.org/package-manager/).

1. In Xcode, open your project and navigate to **File** → **Add Packages**
2. Paste the repository URL (`https://github.com/bgeisb/Tabify.git`) and click **Next**.
3. For **Rules**, select **Up to Next Major Version**.
4. Click **Add Package**.

### CocoaPods

⏳ Coming soon...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Usage -->
## Usage

### 1. Create TabifyItems Enum

> Make sure your enum implements the `TabifyItem` protocol.

```swift
enum TabifyItems: Int, TabifyItem {
    case home = 0
    case search
    case profile
    
    var icon: String {
        switch self {
            case .home: return "house"
            case .search: return "magnifyingglass"
            case .profile: return "person"
        }
    }
    
    var title: String {
        switch self {
            case .home: return "Home"
            case .search: return "Search"
            case .profile: return "Profile"
        }
    }
}
```

### 2. Add Tabify View

```swift
Tabify(selectedItem: $tabBarSelection) {
    Text("Home")
    .tabItem(for: TabifyItems.first)

    Text("Search")
    .tabItem(for: TabifyItems.second)

    Text("Profile")
    .tabItem(for: TabifyItems.third)
}
/* This following modifiers are optional. You can use them to inject your custom bar and item styling. */
.barStyle(style: CustomTabifyBarStyle())
.itemStyle(style: CustomTabifyItemStyle())
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply [open an issue](https://github.com/bgeisb/Tabify/issues/new) with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/bgeisb/Tabify.svg?style=for-the-badge
[contributors-url]: https://github.com/bgeisb/Tabify/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/bgeisb/Tabify.svg?style=for-the-badge
[forks-url]: https://github.com/bgeisb/Tabify/network/members
[stars-shield]: https://img.shields.io/github/stars/bgeisb/Tabify.svg?style=for-the-badge
[stars-url]: https://github.com/bgeisb/Tabify/stargazers
[issues-shield]: https://img.shields.io/github/issues/bgeisb/Tabify.svg?style=for-the-badge
[issues-url]: https://github.com/bgeisb/Tabify/issues
[license-shield]: https://img.shields.io/github/license/bgeisb/Tabify.svg?style=for-the-badge
[license-url]: https://github.com/bgeisb/Tabify/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/bgeisberger
[product-screenshot]: images/screenshot.png
