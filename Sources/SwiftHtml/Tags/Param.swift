//
//  Param.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<param>` tag is used to define parameters for an `<object>` element.
open class Param: Tag {

    public init() {
        super.init(Node(type: .empty, name: "param"))
    }
}

public extension Param {
    
    /// Specifies the name of a parameter
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies the value of the parameter
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
