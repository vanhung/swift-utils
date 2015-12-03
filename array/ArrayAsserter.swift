import Foundation
class ArrayAsserter {
    /**
    * Asserts if the items in @param a is also present in the array @param b
    * @param a: an array of items to check if is apart of the @param b
    * @param b: the array to check against
    * @param strict: toggle the ability that the items must be equal to the array, (almost the same functionality as the isEqual function, although equal function the array must have the same order)
    * @return: a boolean indicating if the items is apart of the array
    * EXAMPLE: ArrayAsserter.contains([1,2,3], [1,2], false)//true
    * EXAMPLE: ArrayAsserter.contains([1,2,3], [1,2], true)//false, the length of a and b must be the same
    * TODO: create a better description
    * NOTE: one can also use the similar native method: array.contains(obj)
    */
    class func contains<T:Equatable>(a:[T], _ b:[T], _ strict:Bool = false)->Bool {
        var score:Int = 0;
        for (var i:Int = 0 , n:Int = a.count ;i < n ;i++) {if (b.indexOf(a[i]) >= 0 ){ score++ }}
        return score == (strict ? b.count:a.count)
    }
}