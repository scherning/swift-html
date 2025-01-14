//
//  Audio.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<audio>` tag is used to embed sound content in a document, such as music or other audio streams.
///
/// The `<audio>` tag contains one or more `<source>` tags with different audio sources. The browser will choose the first source it supports.
///
/// The text between the `<audio>` and `</audio>` tags will only be displayed in browsers that do not support the `<audio>` element.
///
/// There are three supported audio formats in HTML: MP3, WAV, and OGG.
///
///     Browser  | MP3 | WAV  | OGG
///     -------  | --- | ---  | ---
///     Edge/IE  | YES | YES* | YES*
///     Chrome   | YES | YES  | YES
///     Firefox  | YES | YES  | YES
///     Safari   | YES | YES  | NO
///     Opera    | YES | YES  | YES
///      *From Edge 79
open class Audio: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "audio"), children: builder())
    }
}

public extension Audio {
    
    enum Preload: String {
        /// The author thinks that the browser should load the entire audio file when the page loads
        case auto
        /// The author thinks that the browser should load only metadata when the page loads
        case metadata
        /// The author thinks that the browser should NOT load the audio file when the page loads
        case none
    }
    
    /// Specifies that the audio will start playing as soon as it is ready
    func autoplay(_ condition: Bool = true) -> Self {
        flagAttribute("autoplay", nil, condition)
    }
    
    /// Specifies that audio controls should be displayed (such as a play/pause button etc)
    func controls(_ condition: Bool = true) -> Self {
        flagAttribute("controls", nil, condition)
    }
    
    /// Specifies that the audio will start over again, every time it is finished
    func loop(_ condition: Bool = true) -> Self {
        flagAttribute("loop", nil, condition)
    }
    
    /// Specifies that the audio output should be muted
    func muted(_ condition: Bool = true) -> Self {
        flagAttribute("muted", nil, condition)
    }
    
    /// Specifies if and how the author thinks the audio should be loaded when the page loads
    func preload(_ value: Preload = .auto) -> Self {
        attribute("preload", value.rawValue)
    }
    
    /// Specifies the URL of the audio file
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
}

