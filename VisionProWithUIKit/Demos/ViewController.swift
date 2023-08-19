//
//  ViewController.swift
//  VisionProWithUIKit
//
//  Created by Chiaote Ni on 2023/7/18.
//

import UIKit

final class ViewController: UIViewController {

    #if os(xrOS)
    // Indicates the view controller's preference to be displayed on top of a background.
    // The default value is automatic.
    override var preferredContainerBackgroundStyle: UIContainerBackgroundStyle {
        .glass // default is hidden
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // The way to add a hover effect to a ViewController
        view.hoverStyle = .init(
            effect: .lift, //.automatic, .highlight
            shape: .capsule // an abstract representation of a dja
            // .rect, .capsule, .circle,
            // .roundedRect(cornerRadius: CGFloat, cornerCurve: UICornerCurve = .circular, maskedCorners: UIRectCorner = .allCorners)
            // .fixedRect(_ rect: CGRect)
            // .path(_ path: UIBezierPath)
            // .dynamic(_ resolver: @escaping (UIShape.ResolutionContext) -> UIShape.Resolved)
        )
    }

    #endif
}
