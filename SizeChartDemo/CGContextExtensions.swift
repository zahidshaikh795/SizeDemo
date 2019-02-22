//
//  CGContextExtensions.swift
//  SizeChartDemo
//
//  Created by Mohammad Asif on 21/02/19.
//  Copyright © 2019 Zahid Shaikh. All rights reserved.
//

import Foundation
import CoreGraphics

extension CGContext {
    func drawLinearGradient(
        in rect: CGRect,
        startingWith startColor: CGColor,
        finishingWith endColor: CGColor
        ) {
        // 1
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        // 2
        let locations = [0.0, 1.0] as [CGFloat]
        
        // 3
        let colors = [startColor, endColor] as CFArray
        
        // 4
        guard let gradient = CGGradient(
            colorsSpace: colorSpace,
            colors: colors,
            locations: locations
            ) else {
                return
        }
        // 5
        let startPoint = CGPoint(x: rect.midX, y: rect.minY)
        let endPoint = CGPoint(x: rect.midX, y: rect.maxY)
        
        // 6
        saveGState()
        
        // 7
        addRect(rect)
        clip()
        drawLinearGradient(
            gradient,
            start: startPoint,
            end: endPoint,
            options: CGGradientDrawingOptions()
        )
        
        restoreGState()
    }
}
