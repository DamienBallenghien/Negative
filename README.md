# Negative

[![Build Status](https://travis-ci.com/DamienBallenghien/Negative.svg?branch=master)](https://travis-ci.com/DamienBallenghien/Negative)

## Description
Just a small project containing some helpers, or negative functions &amp; variables (`.isNotEmpty`, for example). 


## Some examples

### Optionals

Instead of 

```swift
    value ?? defaultValue
```

You could use

```swift
    value.or(defaultValue)
```


If you don't have a default value to provide, you can also use `.orEmpty` on types `String`, `Array` & `Dictionary` 🙃


### Strings

Let's assume a simple String. You are used to check if this one is not empty, and so write :

```swift
    if !myString.isEmpty { }
```

Instead of what, write :

```swift
    if myString.isNotEmpty { }
```

is far away more easy to read, right ?


Some other functions and variables are provided by this small framework like : 

```swift
    var isNumeric: Bool
    var isAlpha: Bool
    var isEmail: Bool

    // And their contraries 😉

    mutating func localized(bundle: Bundle = .main)

    mutating func trimed()
    mutating func urlEncoded()
```


### Arrays

As for strings, `isNotEmpty` exists. But also : 

```swift
    mutating func move(elementAt from: Int, to: Int) { } // Which moves an element from a position to another
    mutating func excluding(_ element: Element) -> Bool { } // Which excludes an element from your array and tells you if the element was really present
    mutating func excluding(_ elements: [Element]) { } // The same but which more elements, without return

    func doesNotContain(_ element: Element) -> Bool { } // Do I have to tell you ?
    func element(correspondingTo value: Element) -> Element? { } // Which is a `firstWhere` simplified
    func elements(correspondingTo value: Element) -> [Element] { } // Which is a `sorted` simplified
```

*Note that this repository is free of usage, any contribution is welcome.*
