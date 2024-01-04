// TODO: figure out putting the width separately or in the 'style' list
public extension HtmlProvider {
    /// Specifies the width of the content area using a length unit.
    func width(_ length: Double) -> AnyElement {
        let result: AnyElement
        switch html {
        case let .element(element, attrs: attrs, copy, nodes):
            var newAttrs = attrs
            newAttrs[.width] = "\(length)px;"
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
