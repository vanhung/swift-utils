import Foundation
class PointParser{
    /**
     * @param radius: the radius of the circle
     * @param angle: the angle where the point is (in radians) (-π to π) (3.14.. to 3.14..)
     * @return a point on a circle where the pivot is TopLeft Corner (0,0)
     * @Note: One can also use Point.polar(radius,radian) or equivilent method in the spesific language
     */
    class func polarPoint(radius:Double, _ angle:Double) -> (Double,Double) {
        let x:Double = radius + (radius * cos(angle));
        let y:Double = radius + (radius * sin(angle));
        return (x, y);
    }
}

/*
 * Equivalence Operators
 * Custom classes and structures do not receive a default implementation of the equivalence operators, known as the “equal to” operator (==) and “not equal to” operator (!=). It is not possible for Swift to guess what would qualify as “equal” for your own custom types, because the meaning of “equal” depends on the roles that those types play in your code.
 * To use the equivalence operators to check for equivalence of your own custom type, provide an implementation of the operators in the same way as for other infix operators:
 */

/*
func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}
func != (left: Vector2D, right: Vector2D) -> Bool {
    return !(left == right)
}
*/
/*
 * The above example implements an “equal to” operator (==) to check if two Vector2D instances have equivalent values. In the context of Vector2D, it makes sense to consider “equal” as meaning “both instances have the same x values and y values”, and so this is the logic used by the operator implementation. The example also implements the “not equal to” operator (!=), which simply returns the inverse of the result of the “equal to” operator.
 * You can now use these operators to check whether two Vector2D instances are equivalent:
 */

/*
let twoThree = Vector2D(x: 2.0, y: 3.0)
let anotherTwoThree = Vector2D(x: 2.0, y: 3.0)
if twoThree == anotherTwoThree {
    print("These two vectors are equivalent.")
}
*/
// prints "These two vectors are equivalent."


