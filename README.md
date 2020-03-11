# Negative

[![Build Status](https://travis-ci.com/DamienBallenghien/Negative.svg?branch=master)](https://travis-ci.com/DamienBallenghien/Negative)

## Description
Just a small project containing some helpers, or negative functions &amp; variables (.isNotEmpty, for example). 


## Some examples

### Optionals

Instead of `value ?? defaultValue` why do not use `value.or(defaultValue)` ?

If you dont' have a default value to provide, you can also use `orEmpty` on types `String`, `Array` & `Dictionary` 🙃


### Strings

Let's assume a simple String. You are used to check if this one is not empty, and so write :

`if !myString.isEmpty { }`

Instead of what, write :

`if myString.isNotEmpty { }`

is far away more easy to read, right ?


Some other functions and variables are provided by this small framework like : 

```
    var isNumeric: Bool
    var isAlpha: Bool
    var isEmail: Bool

    // And their contraries 😉

    mutating func localized(bundle: Bundle = .main)

    mutating func trimed()
    mutating func urlEncoded()
```
