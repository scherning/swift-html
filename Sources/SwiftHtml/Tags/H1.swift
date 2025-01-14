//
//  H1.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<h1>` to `<h6>` tags are used to define HTML headings.
///
/// `<h1>` defines the most important heading. `<h6>` defines the least important heading.
///
/// **Note:** Only use one `<h1>` per page - this should represent the main heading/subject for the whole page.
/// Also, do not skip heading levels - start with `<h1>`, then use `<h2>`, and so on.
open class H1: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "h1", contents: contents))
    }
}
