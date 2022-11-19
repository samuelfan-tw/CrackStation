# CrackStation, a Decrypter implementation
>
The hash code decrypts to the character.  
>
## Overview 

CrackStation (MVP) is an SHA-1, and SHA-256 decrypt station. You can input one to three [A-Za-z0-9?!] characters of SHA-1 or SHA-256 shaHash codes. The CrackStation will decode and return the character.

## Mission Statement

You can use this CrackStation as a public API when you need to decode the SHA-1 or SHA-256 password or input. You can send the shaHash code to this CrackStation and use the return characters to make sure the password or the code you input is correct.

## Installation
### swift Package Manager
The Swift Package Manager is “a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.”

Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:
```swift
dependencies:[
	.package(url: "git@github.com:samuelfan-tw/CrackStation.git", from: "1.1.2")
]
```
## Usage
### The API
The public API have two function:
>`Init`: For creating and reading in the descriptor dictionary.
`decrypt`: For decrypting shaHash back to plain-text passwords.
>

### An example
1.	Go in the direction
```swift
    ./CrackStation
```
2.	Separately run the following two commands in the terminal
```swift
    swift build
    swift test
```
3.	The unit test result will print on the monitor

- If you want to test other SHA1 hash codes in my crackststion area. You can change "func testGetWord" input String SHA1 hash code to your SHA1 hash code and run "swift test" again. You can get the character you want.
- If you want to test other SHA1 hash codes that are NOT in my crackststion area. You can change "fnuc testError" input string SHA1 hash code to your SHA1 hash code and run "swift test" again. You can get nil

### Author
- Te-Chia, Fan



 