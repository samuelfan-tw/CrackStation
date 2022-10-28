import Foundation

public struct CrackStation : Decrypter {
    public init() {}

    func loadDictionaryFromDisk()  -> [String : String] {
        guard let path = Bundle.module.url(forResource: "sha1", withExtension: "json") else { return [:] }
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
public func decrypt(shaHash: String)->String?{
        
        
            let lookupTable = loadDictionaryFromDisk()
            return lookupTable[shaHash] as String?
            
    }
}
