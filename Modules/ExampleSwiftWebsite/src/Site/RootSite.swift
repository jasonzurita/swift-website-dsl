import SwiftWebsiteDSL

// TODO: custom style guide for code

func renderHtml() -> String {
    let site =
        Html {
            Head(title: "ExampleSwiftWebsite", cssStyleFileName: "")
            Body {
                H1("Hello World!")
                    .padding([.top], 48)
                    .color(.white)
                Footer {
                    P("Built using the Swift Language and is ") {
                        A(copy: "open source.", url: "https://github.com/jasonzurita/swift-website-dsl")
                    }
                }
                .textAlign(.center)
                .color(.lightGray)
            }
            .font(.apple)
            .textAlign(.center)
            .margin(0)
            .padding(0)
            .background(
                .linearGradient(.init(degree: 180, first: (.headerTopBlue, 0), second: (.headerBottomBlue, 100)))
            )
        }
    return site.html.render
}
