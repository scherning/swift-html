//
//  UrlSet.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class UrlSet: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "urlset", attributes: [
            .init(key: "xmlns", value: "http://www.sitemaps.org/schemas/sitemap/0.9"),
        ]), children: builder())
        
    }
}
