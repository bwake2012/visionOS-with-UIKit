// OrnamentView.swift
//
// Created by Bob Wakefield on 3/10/24.
// for VisionProWithUIKit
//
// Using Swift 5.0
// Running on macOS 14.3
//
// 
//

import UIKit

final class OrnamentView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // <------------- UI Elements --------------->

    private lazy var stackView__r9S_Vm_5tH: UIStackView = {
        let stackView = UIStackView()
        stackView.contentMode = .scaleToFill
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var presentationButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .plain()
        button.setTitle("Demo Presentation", for: .normal)
        return button
    }()

    lazy var showOrnamentsButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .plain()
        button.setTitle("Show Ornaments", for: .normal)
        return button
    }()

    // <------------- View Hierachy --------------->

    func assembleViews(view: UIView) {

        view.addSubview(stackView__r9S_Vm_5tH)
        stackView__r9S_Vm_5tH.addArrangedSubview(presentationButton)
        stackView__r9S_Vm_5tH.addArrangedSubview(showOrnamentsButton)
    }

    // <------------- Constrains --------------->

    func addConstraints(to view: UIView) {
        
        NSLayoutConstraint.activate([
            stackView__r9S_Vm_5tH.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView__r9S_Vm_5tH.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
        ])
    }

    // <------------- Base View Properties --------------->

    func setupView() {

        assembleViews(view: self)
        addConstraints(to: self)

        self.backgroundColor = .systemBackground
    }
}
