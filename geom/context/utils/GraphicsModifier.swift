import Foundation

class GraphicsModifier {
    /**
     * Finalizes the fill style to the path
     * NOTE: before it was all bundeled together in the size method, now its move here
     */
    class func stylize(path:CGPath, _ graphics:Graphics){
        //Swift.print("GraphicModifier.stylize()")
        //path.fill()
        //path.stroke()
        graphics.draw(path)//draw everything
        graphics.stopFill()
    }
    /**
     * Finalizes the stroke style to the path
     * NOTE: before it was all bundeled together in the size method, now its move here
     */
    class func stylizeLine(path:CGPath, _ graphics:Graphics){
        graphics.draw(path)//draw everything
        graphics.stopStroke()
    }
}