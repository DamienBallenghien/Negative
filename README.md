# Negative

[![Build Status](https://travis-ci.com/DamienBallenghien/Negative.svg?branch=master)](https://travis-ci.com/DamienBallenghien/Negative)

## Description
Just a small project containing some helpers, or negative functions &amp; variables (`.isNotEmpty`, for example). 


---
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

Let's assume a simple String. You are used to check if this one is not empty, and so write:

```swift
    if !myString.isEmpty { }
```

Instead of what, write:

```swift
    if myString.isNotEmpty { }
```

is far away more easy to read, right ?


Some other functions and variables are provided by this small framework like: 

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

#### Non mutating

- Tells you if your array is not empty

`var isNotEmpty: Bool`

```swift
    let array = ["world", "hello"]
    let result = array.isNotEmpty()
    // result => false
```

- Tells you if your array doesn't contain this element

`func doesNotContain(_ element: Element) -> Bool`

- Gives you the first corresponding element if exists

`func element(correspondingTo value: Element) -> Element?`

- Gives you the corresponding elements if exists

`func elements(correspondingTo value: Element) -> [Element]`

#### Mutating

- Moves an element from a position to another

`mutating func move(elementAt from: Int, to: Int)`

```swift
    var array = ["world", "hello"]
    array.move(elementAt: 0, to: 1)
    // array => ["hello", "world"]
```

- Excludes an element from your array and tells you if the element was present

`@discardableResult mutating func excluding(_ element: Element) -> Bool`
```swift
    var array = ["hello", "world"]
    let wasPresent = array.excluding("hello")
    // array => ["world"]
    // wasPresent => true
```

- Excludes a list of element from your array

`mutating func excluding(_ elements: [Element])`
```swift
    var array = ["hello", "world"]
    array.excluding(["world", "hello"])
    // array => []
```

### Dictionaries

Okay, this is not allowed by Swiftlint, but those are some functions you can use to provide you a value from a `Dictionary` and which provides you a default value if the key does not correspond to any: 

```swift
extension Dictionary where Key == String {
    func s(_ key: String) -> String { (self[key] as? String).orEmpty }
    func i(_ key: String) -> Int { self[key] as? Int ?? 0 }
    func d(_ key: String) -> Double { self[key] as? Double ?? 0.0 }
    func f(_ key: String) -> Float { self[key] as? Float ?? 0.0 }
    func b(_ key: String) -> Bool { self[key] as? Bool ?? false }
}

```


### Ternaries

Ternaries are simple to use, but sometimes hard to read.

What's needed to use a ternary ? An `if`, and an `else`, right ?

So, when you write:

```swift
    boolValue ? resultOne : resultTwo 
```

You could write: 

```swift
    check(boolValue, ifTrue: resultOne, else: resultTwo)
```

Which is more readable for juniors, doesn't it ?


👀
*Note that this repository is free of usage, any contribution is welcome.*

Special thanks to [David Berter](https://github.com/DavidBertet)
