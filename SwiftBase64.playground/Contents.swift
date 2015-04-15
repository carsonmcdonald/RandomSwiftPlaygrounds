import Cocoa

let toEncode = "somevalue"
let base64Encoded = toEncode.dataUsingEncoding(NSUTF8StringEncoding)

let encodedValue = base64Encoded?.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.allZeros)
