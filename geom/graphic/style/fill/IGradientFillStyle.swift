import Foundation
protocol IGradientFillStyle:IFillStyle{
    var gradient:IGradient{get set}
}
extension IGradientFillStyle{
    func copy() -> GradientFillStyle {
        return GradientFillStyle(self.gradient.copy(),(self).color)
    }
    func mix(colors:Array<CGColor>)->GradientFillStyle{
        let c = copy()
        c.gradient.colors = colors
        return c
    }
}