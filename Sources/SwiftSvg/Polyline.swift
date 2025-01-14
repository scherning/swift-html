//
//  Polyline.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

open class Polyline: Tag {

    public init(_ points: [Int]) {
        super.init(Node(type: .standard, name: "polyline", attributes: [
            .init(key: "points", value: points.map { String($0) }.joined(separator: " ")),
        ]))
    }
}
