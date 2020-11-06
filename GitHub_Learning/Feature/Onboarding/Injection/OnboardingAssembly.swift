//
//  OnboardingAssembly.swift
//  GitHub_Learning
//
//  Created by Amin Ashhab on 06/11/2020.
//  Copyright © 2020 Amin_Second_Test_Project. All rights reserved.
//

import Foundation
import SwinjectAutoregistration
import Swinject

final class OnboardingAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(OnboardingViewController.self, initializer: OnboardingViewController.init)
        container.autoregister(PagesController.self, initializer: PagesControllerImpl.init)
    }
}


