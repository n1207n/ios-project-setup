//
//  BaseViewController.swift
//  iosSwiftProjectTemplate
//
//  Created by Silin Na on 1/8/21.
//  Copyright © 2021 COMPANY_NAME. All rights reserved.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {
    // MARK: Reactive modules

    // ARC for Rx
    var disposeBag = DisposeBag()

    // MARK: Layout constraints

    private (set) var didSetupConstraints = false

    override func viewDidLoad() {
        self.view.setNeedsUpdateConstraints()
    }

    override func updateViewConstraints() {
        if !self.didSetupConstraints {
            self.setupConstraints()
            self.didSetupConstraints = true
        }

        super.updateViewConstraints()
    }

    func setupConstraints() {}
}
