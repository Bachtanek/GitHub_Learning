//
//  KeychainAssembly.swift
//  GitHub_Learning
//
//  Created by Amin Ashhab on 05.12.2020.
//  Copyright © 2020 Amin_Second_Test_Project. All rights reserved.
//

import Foundation
import Swinject
import CleanCore
import CleanPlatform

class KeychainAssembly: Assembly {
    func assemble(container: Container) {
        container.register(CredentialsKeychainResource.self) { r in
            let keychainStorage = r.resolve(LocalStorageFactory.self)!.makeKeychainStorage(with: KeychainConfiguration(isSynchronizable: true, deleteWithApp: .yesWithDefaultConfiguration))
            return CredentialsKeychainResourceImpl(keychain: keychainStorage)
        }
        container.autoregister(CredentialKeychainController.self, initializer: CredentialKeychainControllerImpl.init)
        container.autoregister(DeleteCredintalsKeychainFacade.self, initializer: DeleteCredintalsKeychainFacadeImpl.init)
        container.autoregister(LoadCredentialsKeychainFacade.self, initializer: LoadCredentialsKeychainFacadeImpl.init)
        container.autoregister(StoreCredentialsKeychainFacade.self, initializer: StoreCredentialsKeychainFacadeImpl.init)
        container.autoregister(DeleteCredentialsKeychainInteractor.self, initializer: DeleteCredentialsKeychainInteractor.init)
        container.autoregister(LoadCredentialsKeychainInteractor.self, initializer: LoadCredentialsKeychainInteractor.init)
        container.autoregister(StoreCredentialsKeychainInteractor.self, initializer: StoreCredentialsKeychainInteractor.init)
    }
}
