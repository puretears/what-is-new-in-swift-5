import UIKit

/// ### The #-encompass String
///
/// Before Swift 5, if we need to contain a "(apostrophy) in a string, the only way
/// is escaping it by a \.
let str1 = "Contain a \" sign in a String."

/// In Swift 5, you can make the compiler parse all apostrophies directly by encompass
/// the whole string with a pair of `#`.
let str2 = #"Contain a " sign in a String."#

/// ### - The new type of interpolation
///
let boxue = "The best 4K screencasts tutorial of iOS development."
/// But the traditional string interpolation does not work in a #-encompass String.
let str3 = #"\(boxue)"#

/// You have to use the new form of interpolation `\#` like this:
let str4 = #"\#(boxue)"#


/// ### - Use # itself
/// Q: How about using `#` itself in a String?
/// A: Well, use `##` to encompass the String.
let str5 = ##"You can use # directly in a string that is encompassed by ##."##

/// And that even works for the new multi-line String. And notice that
/// if you use `##`, you must use the same for interpolation.
let topic = "Swift languages videos"
let str6 = ##"""
We will update all our \##(topic) to #Swift5
"""##

/// ### - Simplify RE
/// The #-string can also simplify the regular expression rules.
/// Before Swift 5, we have to escape the `\` itself to escape other characters.
let re1 = "^\\-" // Match all strings beginning with `-`

/// And in Swift 5, no escaping anymore :)
let re2 = #"^\-"#

