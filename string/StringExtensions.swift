import Foundation
/**
 * Convenince extensions for often used string methods
 */
extension String {
    /**
     * EXAMPLE: "this is cool".split(" ")//output: ["this","is","cool"]
     */
    func split(delimiter:String)->Array<String>{
        return StringParser.split(self, delimiter)
    }
    /**
     *
     */
    func match(pattern: String!, _ options: NSRegularExpressionOptions = NSRegularExpressionOptions.CaseInsensitive) -> [String]{
        return RegExp.match(self, pattern, options)
    }
    /**
     *
     */
    func matches(pattern: String!, _ options: NSRegularExpressionOptions = NSRegularExpressionOptions.CaseInsensitive) -> [NSTextCheckingResult] {
        return RegExp.matches(self,pattern,options)
    }
    /**
     *
     */
    func test(pattern:String)->Bool{
        return RegExp.test(self, pattern)
    }
    /**
     *
     */
    var count:Int{return self.characters.count}
}
/**
 * Multiplies a string
 * EXAMPLE: "hello" * 3 //hellohellohello
 */
public func * (left: String, right: Int) -> String {
    var result:String = ""
    for _ in 1...right {  result += left }
    return result
}