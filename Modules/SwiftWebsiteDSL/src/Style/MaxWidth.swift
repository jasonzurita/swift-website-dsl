public extension HtmlProvider {
    /// Specifies the max width of the content area using a length unit.
    func maxWidth(percent: Double) -> AnyElement {
        let result: AnyElement
        switch html {
        case let .element(element, attrs: attrs, copy, nodes):
            var newAttrs = attrs
            newAttrs[.style, default: ""] += "max-width: \(percent)%;"
            result = AnyElement(
                element: element,
                attrs: newAttrs,
                copy: copy,
                nodes: nodes
            )
        }
        return result
    }
}
