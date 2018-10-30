//
//  Model.swift
//  5buttonsTest
//
//  Created by Ars on 10/30/18.
//  Copyright © 2018 ArsenIT. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func alphaFromPoint(point: CGPoint) -> CGFloat {
        var pixel: [UInt8] = [0, 0, 0, 0]
        let colorSpace = CGColorSpaceCreateDeviceRGB();
        let context = CGContext(data: &pixel, width: 1, height: 1, bitsPerComponent: 8, bytesPerRow: 4, space: colorSpace, bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)
        context?.translateBy(x: -point.x, y: -point.y)
        self.layer.render(in: context!)
        let floatAlpha = CGFloat(pixel[3])
        return floatAlpha
    }
}

class AlphaTouchableButton: UIButton {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return self.alphaFromPoint(point: point) > 0
    }
}
