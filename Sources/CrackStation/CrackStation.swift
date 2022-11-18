import Foundation

public struct CrackStation : Decrypter {
    private let lookupTable : [String : String]
    public init() {
        lookupTable = CrackStation.loadDictionaryFromDisk()
    } 

    public func decrypt(shaHash: String)->String?{return lookupTable[shaHash]}

    private static func loadDictionaryFromDisk()  -> [String : String] {
        guard let path = Bundle.module.url(forResource: "MVP", withExtension: "json") else { return [:] }
        do{
            let data = try Data(contentsOf: path)
            let jsonResult = try JSONSerialization.jsonObject(with: data)

            if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
                return lookupTable
            } else {
                print("json read error")
                return [:]
            }        
        } catch {
            print("no data")
            return [:]
        }
    }
}