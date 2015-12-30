import Cocoa
/**
 * SVGDisplayObject impliments the same interface as ISVGElement and also the style params in ISVGDisplayObject and extends Sprite so that it can be seen on stage
 */
class SVGView : NSView,ISVGView{
    var style : SVGStyle?;
    var id : String;
    init(_ style:SVGStyle, _ id:String) {
        self.style = style;
        self.id = id;
        super.init(frame: NSRect(0,0,0,0))//<--temp, you may need to st the frame size here if you want to draw some graphics
    }
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}
