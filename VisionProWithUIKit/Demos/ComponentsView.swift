// ComponentsView.swift
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

final class ComponentsView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()

        activityIndicatorView.startAnimating()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // <------------- UI Elements --------------->

    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.contentMode = .scaleToFill
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var topStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.contentMode = .scaleToFill
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.contentMode = .scaleToFill
        stackView.spacing = 33
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.contentMode = .scaleToFill
        textField.contentHorizontalAlignment = .left
        textField.contentVerticalAlignment = .center
        textField.text = "1233456🎊"
        textField.borderStyle = .roundedRect
        textField.textAlignment = .natural
        textField.minimumFontSize = 17
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = .systemFont(ofSize: 14)
        return textField
    }()

    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl()
        segmentedControl.contentMode = .scaleToFill
        segmentedControl.contentHorizontalAlignment = .left
        segmentedControl.contentVerticalAlignment = .top
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()

    private lazy var slider: UISlider = {
        let slider = UISlider()
        slider.contentMode = .scaleToFill
        slider.contentHorizontalAlignment = .center
        slider.contentVerticalAlignment = .center
        slider.value = 1
        slider.minimumValue = 0.0
        slider.maximumValue = 100
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()

    private lazy var switchView: UISwitch = {
        let switchView = UISwitch()
        switchView.contentMode = .scaleToFill
        switchView.contentHorizontalAlignment = .center
        switchView.contentVerticalAlignment = .center
        switchView.translatesAutoresizingMaskIntoConstraints = false
        return switchView
    }()

    private lazy var progressAndActivityStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.contentMode = .scaleToFill
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.contentMode = .scaleToFill
        pageControl.contentHorizontalAlignment = .center
        pageControl.contentVerticalAlignment = .center
        pageControl.numberOfPages = 3
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.pageIndicatorTintColor = .systemGreen
        pageControl.currentPageIndicatorTintColor = UIColor(cgColor: CGColor(genericGrayGamma2_2Gray: 0.66666666669999997, alpha: 1))
        return pageControl
    }()

    private lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.contentMode = .scaleToFill
        stepper.contentHorizontalAlignment = .center
        stepper.contentVerticalAlignment = .center
        stepper.maximumValue = 100
        stepper.translatesAutoresizingMaskIntoConstraints = false
        return stepper
    }()

    private lazy var colorWell: UIColorWell = {
        let colorWell = UIColorWell()
        colorWell.contentMode = .scaleToFill
        colorWell.contentHorizontalAlignment = .center
        colorWell.contentVerticalAlignment = .center
        colorWell.translatesAutoresizingMaskIntoConstraints = false
        return colorWell
    }()

    private lazy var datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.contentMode = .scaleToFill
        datePicker.contentHorizontalAlignment = .center
        datePicker.contentVerticalAlignment = .center
        datePicker.datePickerMode = .dateAndTime
        datePicker.minuteInterval = 1
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()

    private lazy var pickerView: UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.contentMode = .scaleToFill
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        return pickerView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.contentMode = .left
        label.text = "Label"
        label.textAlignment = .natural
        label.lineBreakMode = .byWordWrapping
        label.baselineAdjustment = .alignBaselines
        label.adjustsFontSizeToFitWidth = false
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 17)
        return label
    }()

    private lazy var plainButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.configuration = .plain()
        button.setTitle("Plain Button", for: .normal)
        return button
    }()

    private lazy var filledButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.configuration = .filled()
        button.setTitle("Filled Button", for: .normal)
        return button
    }()

    private lazy var tintedButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.configuration = .tinted()
        button.setTitle("Tinted Button", for: .normal)
        return button
    }()

    private lazy var showMenuButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.showsMenuAsPrimaryAction = true
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show Menu Button", for: .normal)
        button.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        return button
    }()

    private lazy var menuShownButton: UIButton = {
        let button = UIButton()
        button.contentMode = .scaleToFill
        button.showsMenuAsPrimaryAction = true
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.changesSelectionAsPrimaryAction = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Menu Shown Button", for: .normal)
        button.setImage(UIImage(systemName: "square.and.arrow.up.fill"), for: .normal)
        return button
    }()

    private lazy var progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.contentMode = .scaleToFill
        progressView.progress = 0.5
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()

    private lazy var activityIndicatorView: UIActivityIndicatorView = {
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.contentMode = .scaleToFill
        // activityIndicatorView.animating = true
        activityIndicatorView.style = .large
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        activityIndicatorView.color = UIColor(named: "AccentColor")
        return activityIndicatorView
    }()

    // <------------- View Hierarchy --------------->

    func assembleViews(to view: UIView) {

        view.addSubview(mainStackView)

        topStackView.addArrangedSubview(label)
        topStackView.addArrangedSubview(plainButton)
        topStackView.addArrangedSubview(filledButton)

        buttonStackView.addArrangedSubview(tintedButton)
        buttonStackView.addArrangedSubview(showMenuButton)
        buttonStackView.addArrangedSubview(menuShownButton)

        progressAndActivityStackView.addArrangedSubview(progressView)
        progressAndActivityStackView.addArrangedSubview(activityIndicatorView)

        mainStackView.addArrangedSubview(topStackView)
        mainStackView.addArrangedSubview(buttonStackView)
        mainStackView.addArrangedSubview(textField)
        mainStackView.addArrangedSubview(segmentedControl)
        mainStackView.addArrangedSubview(slider)
        mainStackView.addArrangedSubview(switchView)
        mainStackView.addArrangedSubview(progressAndActivityStackView)
        mainStackView.addArrangedSubview(pageControl)
        mainStackView.addArrangedSubview(stepper)
        mainStackView.addArrangedSubview(colorWell)
        mainStackView.addArrangedSubview(datePicker)
        mainStackView.addArrangedSubview(pickerView)
    }

    // <------------- Constraints --------------->

    func addConstraints(to view: UIView) {

        NSLayoutConstraint.activate([
            slider.widthAnchor.constraint(equalToConstant: 200),

            progressView.widthAnchor.constraint(equalToConstant: 200),

            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: mainStackView.bottomAnchor, constant: 8.0),
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8.0),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: 8.0),
        ])
    }

    // <------------- Base View Properties --------------->

    func setupView() {

        assembleViews(to: self)
        addConstraints(to: self)

        self.backgroundColor = .systemBackground
    }
}
