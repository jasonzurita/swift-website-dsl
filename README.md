![example workflow](https://github.com/jasonzurita/swift-website-dsl/actions/workflows/tests.yml/badge.svg)

<p align="center" style="font-size:8px">
    <img src="https://private-user-images.githubusercontent.com/13800855/294244368-0c7fca1d-e7b0-44ed-a02c-dfde59cdf72d.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDQzODg3MTUsIm5iZiI6MTcwNDM4ODQxNSwicGF0aCI6Ii8xMzgwMDg1NS8yOTQyNDQzNjgtMGM3ZmNhMWQtZTdiMC00NGVkLWEwMmMtZGZkZTU5Y2RmNzJkLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAxMDQlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMTA0VDE3MTMzNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWFkODA0Mzc0YTA3YmE2OTA5NWJmM2U5N2E0YTE5NTIzNjIyZTQ4ZDg3NTYxNDMwMDU5MzZlYWUyZTk1MTlkMjAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.EB8eTk9WwXN9Ilj-GfO1b1VhduwVkYLvKQyWZoVkdUU#gh-light-mode-only" width="500px" alt="Swift Website DSL Logo"/>
    <img src="https://private-user-images.githubusercontent.com/13800855/294244464-4c322cf7-e107-407d-80d0-69249cca9eb1.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDQzODg3MTUsIm5iZiI6MTcwNDM4ODQxNSwicGF0aCI6Ii8xMzgwMDg1NS8yOTQyNDQ0NjQtNGMzMjJjZjctZTEwNy00MDdkLTgwZDAtNjkyNDljY2E5ZWIxLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAxMDQlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMTA0VDE3MTMzNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWUxNWNhMGI4MjA4NzM4Y2E1ODA1YTljYTYzOWQyOTBjZTM1MmRjMzg4OTRmMjEzYjI3NzBiZWYwMTA3NDY3NWImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.gOmsnAKbwZv7NL9uXY3AW79YWzYM9L-atoIVMIctDWE#gh-dark-mode-only" width="500px" alt="Swift Website DSL Logo"/>
</p>

---

`swift-website-dsl` is a domain specific language (DSL) library for building websites using the [Swift programming language](https://www.swift.org).

While some website DSLs built in Swift abstract away HTML/CSS, this DSL doesn't. This library keeps the elements of HTML/CSS while providing the elegance of writing code in a style like SwiftUI and with the type safety of Swift. The result is a DSL that encodes the HTML spec and keeps is rooted in the familiarity of website development but leverages the power the Swift language to make it more enjoyable and less error prone. 

The [Swifty Notes](https://swiftynotes.com) website is an example of a site written using this library. Here is a code snippet to see what using this library is like
```swift
Html {
    Head(title: "SwiftyNotes", cssStyleFileName: "CodeColors.css")
    Body {
        SiteHeader()
        SiteNotes()
        Footer {
            P("Jason Zurita &copy; 2024 | Built in Swift and ") {
                A(copy: "open source.", url: "https://github.com/jasonzurita/swiftynotes")
            }
        }
        .textAlign(.center)
        .color(.mediumGray)
    }
    .font(.apple)
    .textAlign(.center)
    .background(.color(.lightGray))
    .margin(0)
    .padding(0)
}
```

# Quick Start (building the example website)
To test out the DSL using the provided example website
- Open terminal
- Clone this repo
  + `git clone https://github.com/jasonzurita/swift-website-dsl`
- Change directories to the cloned project
  + `cd <path>/swift-website-dsl`
- Generate the example website
  + `swift run`
- Open the generated website in your browser
  + `open _site/index.html`

 Congrats 🥳. Try and make changes to the example site, `swift run` again, and refresh your browser!

# Getting Started (using this library)
_Note: The [example website](./Modules/ExampleSwiftWebsite/src) and [swiftynotes project](https://github.com/jasonzurita/swiftynotes) setup are good examples to follow along with the below steps_
- Add the swift-website-dsl to your package.swift manifest
    ```swift
    dependencies: [
        .package(url: "https://github.com/jasonzurita/swift-website-dsl.git", from: "1.0.0"),
    ]
    ```
- Make use of the library in the desired _target_
    ```swift
    .product(name: "SwiftWebsiteDSL", package: "swift-website-dsl"),
    ```
- Import the library to get access to all the HTML elements and styling modifiers
  + `import SwiftWebsiteDSL`
- To generate your website
  + Create a `main.swift` file like [this](./Modules/ExampleSwiftWebsite/src/main.swift)
  + This step will define the output folder for the generated site. For example, the example website uses `_site`
- Make your website module an executable in your package.swift
   ```swift
    products: [
        .executable(name: "<your-site-name>", targets: ["<your-site-target-name>"]),
    ],
   ```
- To build and generate the site
  + `swift run` from the root directory

# Tech Stack

## Modules
There are two [Swift modules](./Package.swift) in this repo: the example website, and the HTML eDSL.

### [The HTML eDSL](./Modules/SwiftWebsiteDSL)
The HTML embedded domain specific language (eDSL) was build using Swift's [Result Builders](https://developer.apple.com/videos/play/wwdc2021/10253/) to be _SwiftUI_ like in its syntax. Knowing [about HTML](https://www.w3schools.com/html/) will help in knowing the provided elements like _body_ and what styles can be used.

### [The Example Website Module](https://github.com/jasonzurita/swift-website-dsl/tree/main/Modules/ExampleSwiftWebsite/src)
This module consumes the above HTML eDSL library. The result is a fully Swift defined site along with styling. When `swift run` is invoked, this module runs as an executable and [generates HTML](./Modules/ExampleSwiftWebsite/src/main.swift) that is ready to be statically hosted and consumed by browsers.

## Tests
The building block elements (e.g., H and Body tags) are individually generated in tests (including styles) and then text snapshotted using the [Point-Free Snapshot Testing library](https://github.com/pointfreeco/swift-snapshot-testing). The result is that there is a high level of code coverage and that each element is _locked_ in with the generated output HTML and given style.  This further ensures the HTML spec is codified and won't break when making changes to the library. Check out the [snapshots](./Modules/SwiftWebsiteDSL/Tests/__Snapshots__) and [tests](./Modules/SwiftWebsiteDSL/Tests/).

Tests can be run locally and also automatically run in CI via the [test workflow](./.github/workflows/).

## Deployment
The output of the `_site` directory is a ready to go static website! For example, the [SwiftyNotes](https://swiftynotes.com) site is hosted using [CloudFlare pages](https://pages.cloudflare.com) as a static website. When a new commit is _pushed_ to the main branch, [GitHub Actions](https://github.com/jasonzurita/swiftynotes/blob/main/.github/workflows/publish.yml) runs the tests, builds the website, and then uploads the generated site (the `_site` directory) for CloudFlare to host it 🚀!

