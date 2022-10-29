# CrackStation
### -  version 1.0.0

>
CrackStation POCv2 is SHA1 and SHA256 hash code library. You can input any one or two characters [A-Z, a-z, and 0-9] SHA1 and SHA156 hash codes. The CrackStation will return the character. 
>
#### Function of Crack_station 

    1) Have one and two characters of [A-Z, a-z and 0-9] SHA1 and SHA256 hash Crackstation library. 
    2) You can give String SHA1 or SHA256 hash code to the "password," and the library will decode and return the character or nil. 
    3) 3 unit test function at CrackStationTest.swift . 


#### How to run my code

1) Go in the direction 
```bash
             ./CrackStation
```

2) Separately run the following two commands in the tunnel

```swift
    swift build
```
```swift
    swift test
```
3) The unit test result will print on the monitor
## Note
- If you want to test other SHA1 or ShA256 hash codes in my CrackstStion. You can change the "func testGetWord" input String hash code to your hash code and run the "swift test" again. You can get the character you want.
- If you want to test other SHA1 or SHA256 hash codes that are NOT in my crackststion area. You can change the "fnuc testError" input string hash code to your hash code and run "swift test" again. You can get nil.





