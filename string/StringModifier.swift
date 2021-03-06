import Foundation
class StringModifier{
    /**
     * Returns an array with many strings
     */
    class func split(str:String, _ delimiter:String)->[String]{
        return str.componentsSeparatedByString(delimiter)
    }
    /**
     * replaceEvery("abc 123 abc 123","123","abc")
     */
    class func replaceEvery(str:String,match:String,replacment:String)->String{
        let replaced = str.stringByReplacingOccurrencesOfString(match, withString: replacment)
        return replaced
    }
    /**
     * Replaces first match
     * Replaces @param match in @param input with @param replacement
     * EXAMPLE: replaceFirst("Hello" + " " + "😄","😄","🐈") // Hello 🐈
     */
    class func replaceFirst(var input:String,_ match:String,_ replacement:String)->String{
        input.insertContentsOf(replacement.characters, at: input.rangeOfString(match)!.startIndex)
        input.removeRange(input.rangeOfString(match)!)
        return input
    }
    /**
     * EXAMPLE: combine(["Andrew", "Ben", "John", "Paul", "Peter", "Laura"]," ")//"Andrew Ben John Paul Peter Laura"
     */
    class func combine(strings:Array<String>, _ seperator:String)->String{
        return strings.joinWithSeparator(seperator)
    }
	/**
	 *
	 */
	class func wrapWith(string:String, _ wrapper:String)->String{
	   return wrapper + string + wrapper
	}
	/**
	 * returns a reversed strin
	 * NOTE: does not modify the original string
	 * NOTE: shorter version of this method: 		return string.sort( { (s1: String, s2: String) -> Bool in return s1 > s2 } )//closure expression syntax
	 * NOTE: even shorter string.sort( { s1, s2 in return s1 > s2 } )//infered version of the bellow: 
	 * NOTE: even shorter: string.sort( { s1, s2 in s1 > s2 } )//the return statement is omitted as it is implicit
	 * NOTE: even shorter: string.sort( { $0 > $1 } )//shorthand argument names, the in is omitted since the expression is made up entirly of its body
	 * NOTE: even shorther string.sort(>)//operator function
	 * NOTE: keep the long version around so that its easier to understand
     * Example: reverse("hello")//"olleh"
	 */		
	class func reverse(str:String)->String{
        /*
        //Nice to have: you may need similar code in the future
        var revStr = ""
        for _ in str.characters {//loop n times
            revStr.append(str.characters.last!)
            str = String(str.characters.dropLast())
        }
        return revStr
        */
        return String(str.characters.reverse())//new in swift 2
	}
	/**
	 * 
	 */
	class func capitalize(string:String)->String{
		return string.capitalizedString
	}
    /*
     * Returns a lowercase string
     */
    class func lowerCase(string:String)->String{
       return string.lowercaseString
    }
    /*
     * Returns an uppercase string
     */
    class func upperCase(string:String)->String{
        return string.uppercaseString
    }
    /*
     * Returns @param string with the first character capitalizesed, 
     * NOTE: Can also be done through replaceRange: string.replaceRange(string.startIndex...string.startIndex, with: String(string[string.startIndex]).capitalizedString) //we use replaceRange in combination with the .capitalizedString method // string[string.start.index] returns a Character instance. then we cast this as a string
     */
    class func capFirstChar(str:String)->String{
        let firstChar:Character = CharacterParser.charAt(str, 0)
        let theRest:String = StringParser.subString(str,1,str.characters.count)
        return String(firstChar) + theRest
    }
    /*
     * Returns a new string from @param str with a new @param char inserted at @param index
     */
    class func insertCharAt(var str:String, _ char:Character,_ index:Int)->String{
        let strIndex = str.startIndex.advancedBy(index)
        str.insert(char, atIndex: strIndex)
        return str
    }
    /**
     * Returns @param a with the content of @param b inserted at @param i
     * NOTE: Can also be done through replaceRange: string.replaceRange(string.startIndex...string.startIndex, with: String(string[string.startIndex]).capitalizedString) //we use replaceRange in combination with the .capitalizedString method // string[string.start.index] returns a Character instance. then we cast this as a string
     * NOTE: Does not alter the original strings
     */
    class func insertAt(var a:String,_ b:String,_ i:Int)->String{
        let index = a.startIndex.advancedBy(i)
        a.insertContentsOf(b.characters, at: index)
        return a
    }
    /**
     * Returns a new string that has that has a section of its text replaced with @param b, the section is from @param start to @param end
     * @Example: replaceRange("Finland", 2,3,"NLA")//fiNLAnd
     * TODO: probably use inout
     */
    class func replaceRange(var str:String,_ replacement:String,_ start:Int, _ end:Int)->String{
        let range:Range<String.Index> = StringRangeParser.stringRange(str, start, end)
        str.replaceRange(range, with: replacement)
        return str
    }
    /**
     * Directly replaces a with b, and b with a
     * NOTE: Modifies the original a and b strings
     */
    class func swap(inout a: String, inout _ b: String){
        ObjectModifier.swapObjects(&a, &b)
    }
    /**
     * Trims all whitespace from left and right of @param str
     * @NOTE: the original string is not modified
     * Example: trimWhiteSpace("    Let's trim the whitespace    ")//"Let's trim the whitespace"
     * @NOTE: you can also use: NSCharacterSet.whitespaceAndNewlineCharacterSet()
     */
    class func trimWhiteSpace(str:String)->String{
        return str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}