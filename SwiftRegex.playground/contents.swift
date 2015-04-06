import Foundation

let valueToCheck = "1.2.3-5"
let regexToUse = "(\\d)\\.(\\d)(\\.(\\d))?-(\\d)"

let regex = NSRegularExpression(pattern: regexToUse, options: NSRegularExpressionOptions.allZeros, error: nil)
let matches = regex?.matchesInString(valueToCheck, options: NSMatchingOptions.allZeros, range: NSMakeRange(0, valueToCheck.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)))

if matches?.count >= 1 {
    
    println("Number of matches: \(matches!.count)")
    
    if let matchesTCR = matches as? [NSTextCheckingResult] {
        
        for match in matchesTCR {
            println("Number of matches found: \(match.numberOfRanges)")
            
            for rangeCount in 1..<match.numberOfRanges {
                let range = match.rangeAtIndex(rangeCount)
                if range.location != NSNotFound  {
                    let part = (valueToCheck as NSString).substringWithRange(range)
                    println(part)
                }
            }
        }
        
    }
    
}
