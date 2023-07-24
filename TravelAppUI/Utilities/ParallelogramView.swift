//
//  ParallelogramView.swift
//  TravelAppUI
//
//  Created by Aung Kyaw Phyo on 7/24/23.
//

import Foundation
import UIKit

@IBDesignable
class ParallelogramView: UIView {

    @IBInspectable var offset:    CGFloat = 30              { didSet { setNeedsDisplay() } }
    @IBInspectable var fillColor: UIColor = .lightGray      { didSet { setNeedsDisplay() } }

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()

        path.move(to: CGPoint(x: bounds.minX + offset, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX - offset, y: bounds.maxY))
        path.addLine(to: CGPoint(x: bounds.minX, y: bounds.maxY))

        // Close the path. This will create the last line automatically.
        path.close()
        fillColor.setFill()
        path.fill()
    }
}


@IBDesignable
class LeftParallelogramView: UIView {

    @IBInspectable var offset:    CGFloat = 30              { didSet { setNeedsDisplay() } }
    @IBInspectable var fillColor: UIColor = .lightGray      { didSet { setNeedsDisplay() } }

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()

        path.move(to: CGPoint(x: bounds.minX + offset, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.maxY))
        path.addLine(to: CGPoint(x: bounds.minX, y: bounds.maxY))

        // Close the path. This will create the last line automatically.
        path.close()
        fillColor.setFill()
        path.fill()
    }
}


