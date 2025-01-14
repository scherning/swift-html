//
//  LabelTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class LabelTagTests: XCTestCase {

    func testLabelChildren() {
        let isRequired = true
        let doc = Document(.html) {
            Label("foo") {
                Span("(bar)").class("more")
                if isRequired {
                    Span("*").class("required")
                }
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), #"""
                            <!DOCTYPE html>
                            <label>foo
                                <span class="more">(bar)</span>
                                <span class="required">*</span>
                            </label>
                            """#)
    }
   
    
}
