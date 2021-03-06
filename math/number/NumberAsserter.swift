import Foundation
/**
 * Definition of Asserter: state a fact or belief confidently and forcefully
 * TODO: Rename this to CGFloatAsserter, and then make a typeAlias to NumberAsserter -> to not break legacy code. (Do the same with PointAserter etc)
 */
class NumberAsserter{
    /**
     * @return true if number is odd
     * 	print(NumberAsserter.odd(0));//false
     * 	print(NumberAsserter.odd(1));//true
     * 	print(NumberAsserter.odd(2));//false
     * 	print(NumberAsserter.odd(3));//true
     * 	print(NumberAsserter.odd(4));//false
     */
    class func odd(number:CGFloat)->Bool {
        return number % 2 != 0;
    //			if((number % Math.sqrt(number) == 0) || (number % 2 == 0)) return false;
    //			else return true;
    }
    /**
    *
    */
    class func even(number:CGFloat)->Bool{
        return !odd(number)
    }
    /**
     * @Note: In most cases you will want to write if(someNumber < 0)
     */
    class func negative(number:CGFloat)->Bool {
        return number < 0;
    }
    /**
     * @Note: In most cases you will want to write if(someNumber >
     */
    class func positive(number:CGFloat)->Bool {
        return number > 0;
    }
    /**
     * print(NumberAsserter.isNear(-1.8650465545944293 , -1.8650465545944273, NumberAsserter.EPSILON));//true, result is 10e-15 which is less than 10e-12
     * NOTE: i think this could be written simpler: Math.abs(a - b) <= epsilon, test different cases to verify
     */
    class func isNear(a:CGFloat,_ b:CGFloat,_ epsilon:CGFloat)->Bool {//this could also be named almostEqual
        if(a == b){ return true}
        else{
            let result:CGFloat = Swift.max(a, b) - Swift.min(a, b)
            //print("result: " + "\(result)");
            return result < epsilon//TODO: we could do <= here
        }
    }
    /**
     * UnLike isNear, this returns true for cases where the value is within epsilon and on epsiolon, see examples bellow:
     * NOTE: The computation is also simpler and faster
     * EXAMPLE: near(40,50,10)//true
     * EXAMPLE: near(-40,-50,10)//true
     * EXAMPLE: near(-10,0,10)//true
     * EXAMPLE: near(10,0,10)//true
     * EXAMPLE: near(-60,-50,10)//true
     */
    class func near(a:CGFloat,_ b:CGFloat,_ epsilon:CGFloat) -> Bool{
        return abs(a - b) <= epsilon
    }
    /**
     * @Note unlike the native "==" method this method supports NaN values
     */
    class func equals(a:CGFloat,_ b:CGFloat) -> Bool {
        return (a.isNaN && b.isNaN) || a == b
    }
    /**
     * @Note you can also use Number.NEGATIVE_INFINITY and Number.POSITIVE_INFINITY
     */
    class func isInfinity(number:CGFloat) -> Bool {
        return number == CGFloat.infinity || number == -CGFloat.infinity
    }
}