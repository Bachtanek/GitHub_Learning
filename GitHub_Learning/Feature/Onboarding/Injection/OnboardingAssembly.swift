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
import CleanCore
import CleanPlatform

final class OnboardingAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(OnboardingViewController.self, initializer: OnboardingViewController.init)
            .implements(OnboardingView.self)
        container.autoregister(OnboardingController.self, initializer: OnboardingControllerImpl.init)
            .inObjectScope(.container)
        container.autoregister(UIWindow.self, initializer: UIWindow.init)
        container.autoregister(OnboardingPresenter.self, initializer: OnboardingPresenterImpl.init)
            .initCompleted { (r, presenter) in
                (presenter as? OnboardingPresenterImpl)?.view = r.resolve(OnboardingView.self)
            }
        container.register(OnboardingResource.self) { r in
            let localStorage = r.resolve(LocalStorageFactory.self)!.makeUserDefaultsStorage()
            return OnboardingResourceImpl(localStorage: localStorage)
        }
        container.autoregister(LoadOnboardingFinishedInteractor.self, initializer: LoadOnboardingFinishedInteractor.init)
        container.autoregister(StoreOnboardingFinishedInteractor.self, initializer: StoreOnboardingFinishedInteractor.init)
        container.autoregister(StoreOnboardingFinishedFacade.self, initializer: StoreOnboardingFinishedFacadeImpl.init)
        container.autoregister(LoadOnboardingFinishedFacade.self, initializer: LoadOnboardingFinishedFacadeImpl.init)
    }
}
