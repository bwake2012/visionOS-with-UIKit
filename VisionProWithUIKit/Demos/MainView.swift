// MainView.swift
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

class MainView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // <------------- UI Elements --------------->

    private lazy var buttonStack: UIStackView = {
        let stackView = UIStackView()
        stackView.contentMode = .scaleToFill
        stackView.axis = .vertical
        stackView.spacing = 264
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var uiComponentsButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .plain()
        button.setTitle("UI Components", for: .normal)
        return button
    }()

    lazy var presentOrnamentsAndHoverStyleButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .plain()
        button.setTitle("Present, Ornaments, and HoverStyle", for: .normal)
        return button
    }()

    // <------------- View Hierachy --------------->

    func assembleViews(to view: UIView) {

        view.addSubview(buttonStack)
        buttonStack.addArrangedSubview(uiComponentsButton)
        buttonStack.addArrangedSubview(presentOrnamentsAndHoverStyleButton)
    }

    // <------------- Constrains --------------->

    func addConstraints(to view: UIView) {

        NSLayoutConstraint.activate([
            buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    // <------------- Base View Properties --------------->

    func setupView() {

        assembleViews(to: self)
        addConstraints(to: self)

        self.backgroundColor = .systemBackground
    }
}
