//
//  Option.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<option>` tag defines an option in a select list.
/// 
/// `<option>` elements go inside a `<select>`, `<optgroup>`, or `<datalist>` element.
/// 
/// **Note:** The `<option>` tag can be used without any attributes, but you usually need the value attribute, which indicates what is sent to the server on form submission.
/// 
/// **Tip:** If you have a long list of options, you can group related options within the `<optgroup>` tag.
open class Option: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "option", contents: contents))
    }
}

public extension Option {
    /// Specifies that an option should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies a shorter label for an option
    func label(_ value: String) -> Self {
        attribute("label", value)
    }
    
    /// Specifies that an option should be pre-selected when the page loads
    func selected(_ condition: Bool = true) -> Self {
        flagAttribute("selected", nil, condition)
    }
    
    /// Specifies the value to be sent to a server
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
