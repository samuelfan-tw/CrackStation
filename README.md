# CrackStation
### -  version 1.0.0

>
CrackStation (POCv2) is a SHA1 and SHA256 hash decode library. You can input one or two characters [A-Z, a-z, and 0-9] SHA1 or SHA256 hash codes. The CrackStation will decode and return the character. 
>
#### Function of CrackStation 

1) Crackstation has one and two character SHA1 and SHA256 hash code library. 
2) You can give String SHA1 or SHA256 hash code to the CrackStation and the CrackStation will decode and return the character or nil. 
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
- If you want to test other SHA1 or SHA256 hash codes that are in my CrackStation. You can change the "func testGetWord" input String hash code to your hash code and run the "swift test" again. You can get the character you want.
- If you want to test other SHA1 or SHA256 hash codes that are NOT in my CrackStation area. You can change the "fnuc testError" input string hash code to your hash code and run "swift test" again. You can get nil.





