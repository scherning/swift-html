//
//  Legend.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<legend>` tag defines a caption for the `<fieldset>` element.
open class Legend: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "legend", contents: contents))
    }
}
