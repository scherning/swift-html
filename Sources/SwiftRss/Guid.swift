//
//  Guid.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Guid: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "guid", contents: contents))
    }
}

public extension Guid {
    
    func isPermalink(_ value: Bool = true) -> Self {
        attribute("isPermalink", String(value))
    }
}
