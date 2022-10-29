# CrackStation

###  Author name : Te-Chia, Fan 
### -  version 1.0.0

>
CrackStation (POCv2) is a SHA1 and SHA256 hash decode library. You can input one or two characters [A-Z, a-z, and 0-9] SHA1 or SHA256 hash codes. The CrackStation will decode and return the character. 
>
#### Function of CrackStation 

1) Crackstation has one and two character SHA1 and SHA256 hash code library. 
2) You can give String SHA1 or SHA256 hash code to the CrackStation and the CrackStation will decode and return the character or nil. 

3) You can use this library to be imported as a dependency into a desktop application, a command-line application.

#### How to use this CrackStation

- You can use this CrackStation as a public API(an application programming interface made publicly available to software developers) when you need to decode the SHA1 or SHA256 password or input. You can send the hash code to this CrackStation and use the return characters to make sure the password or the code that you input is correct or not.    

#### How to run my code

1) Go in the direction 
```bash
    ./CrackStation
```

2) Separately run the following two commands in the terminal

```swift
    swift build
```
```swift
    swift test
```
3) The unit test result will print on the monitor



## Note
- If you want to test other SHA1 or SHA256 hash codes that are in my CrackStation. You can change the "func testGetWord" input String hash code to your hash code and run the "swift test" again. You can get the character you want.
- If you want to test other SHA1 or SHA256 hash codes that are NOT in my CrackStation area. You can change the "fnuc testError" input string hash code to your hash code and run "swift test" again. You can get nil.





