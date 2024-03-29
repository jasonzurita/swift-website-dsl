public extension HtmlProvider {
    func margin(_ sides: [Side], _ value: Double) -> AnyElement {
        let result: AnyElement
        switch html {
        case let .element(element, attrs: attrs, copy, nodes):
            var newAttrs = attrs
            if Set(Side.allCases).isSubset(of: sides) {
                newAttrs[.style, default: ""] += "margin: \(value)px;"
            } else {
                for side in sides {
                    newAttrs[.style, default: ""] += "\(side.margin): \(value)px;"
                }
            }

            result = AnyElement(
                element: element,
                attrs: newAttrs,
                copy: copy,
                nodes: nodes
            )
        }
        return result
    }

    // Not sure why a default argument didn't work in the above function 🤷‍♂️
    func margin(_ value: Double) -> AnyElement {
        margin(Side.allCases, value)
    }

    // TODO: consider combining this with the px function and making auto into a general enum with associated value
    func margin(_ sides: [Side], _: Auto) -> AnyElement {
        let result: AnyElement
        switch html {
        case let .element(element, attrs: attrs, copy, nodes):
            var newAttrs = attrs
            if Set(Side.allCases).isSubset(of: sides) {
                newAttrs[.style, default: ""] += "margin: auto;"
            } else {
                for side in sides {
                    newAttrs[.style, default: ""] += "\(side.margin): auto;"
                }
            }

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
