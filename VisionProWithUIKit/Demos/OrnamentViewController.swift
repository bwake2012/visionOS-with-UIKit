//
//  OrnamentViewController.swift
//  VisionProWithUIKit
//
//  Created by Chiaote Ni on 2023/7/18.
//

import UIKit
import SwiftUI

final class OrnamentViewController: UIViewController {

    private var currentIndex: Int = 0

    override func loadView() {
        super.loadView()

        let view = OrnamentView(frame: .zero)

        view.presentationButton.addTarget(self, action: #selector(demoPresentation(_ :)), for: .touchUpInside)
        view.showOrnamentsButton.addTarget(self, action: #selector(showTwoOrnaments(_ :)), for: .touchUpInside)

        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction
    private func demoPresentation(_ sender: UIButton) {
        let controller = ComponentsViewController()
        controller.modalPresentationStyle = .popover

        if let presentationController = controller.popoverPresentationController {
            presentationController.sourceView = sender
#if !os(visionOS)
            presentationController.backgroundColor = .systemTeal
#endif
            //            switch traitCollection.userInterfaceIdiom {
            //            case .reality:
            switch currentIndex {
            case 0:
                presentationController.permittedArrowDirections = .up
            case 1:
                presentationController.permittedArrowDirections = .down
            case 2:
                presentationController.permittedArrowDirections = .left
            default:
                presentationController.permittedArrowDirections = .right
            }
            //            default:
            //                presentationController.permittedArrowDirections = .any
            //            }
            currentIndex = (currentIndex + 1) % 4
        }
        present(controller, animated: true)
    }

    @IBAction
    private func showTwoOrnaments(_ sender: UIButton) {
        #if os(visionOS)
        let ornament = UIHostingOrnament(sceneAnchor: .bottom, contentAlignment: .leading) {
            Text(verbatim: "123455678987654")
                .frame(width: 200, height: 50)
                .glassBackgroundEffect(displayMode: .implicit)
        }
        let ornament2 = UIHostingOrnament(sceneAnchor: .bottom, contentAlignment: .bottom) {
            Text(verbatim: "abcdefg")
                .frame(width: 200, height: 300)
                .glassBackgroundEffect(displayMode: .implicit)
        }
        ornaments = [ornament, ornament2]
        #endif
    }
}
