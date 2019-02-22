//
//  CellBackground.swift
//  SizeChartDemo
//
//  Created by Mohammad Asif on 21/02/19.
//  Copyright © 2019 Zahid Shaikh. All rights reserved.
//

import UIKit

class CellBackground: UIView {

    override func draw(_ rect: CGRect) {
        // 1
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        let backgroundRect = bounds
        context.drawLinearGradient(
            in: backgroundRect,
            startingWith: UIColor.starwarsSpaceBlue.cgColor,
            finishingWith: UIColor.black.cgColor
        )
        let strokeRect = backgroundRect.insetBy(dx: 4.5, dy: 4.5)
        context.setStrokeColor(UIColor.red.cgColor)
        context.setLineWidth(1)
        context.stroke(strokeRect)
        context.setLineDash(phase: 0, lengths: [5,5,5,5])
        //drawBlueCircle(in: context)
    }
    func drawBlueCircle(in context: CGContext) {
        context.saveGState()
        context.setFillColor(UIColor.red.cgColor)
        context.addEllipse(in: bounds)
        context.drawPath(using: .fill)
        context.restoreGState()
    }
    
}

extension UIColor {
    public static let starwarsYellow =
        UIColor(red: 250/255, green: 202/255, blue: 56/255, alpha: 1.0)
    public static let starwarsSpaceBlue =
        UIColor(red: 5/255, green: 10/255, blue: 85/255, alpha: 1.0)
    public static let starwarsStarshipGrey =
        UIColor(red: 159/255, green: 150/255, blue: 135/255, alpha: 1.0)
} 
