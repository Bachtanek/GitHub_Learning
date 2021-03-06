//
//  ScopeSpec.swift
//  GitHub_Learning
//
//  Created by Amin Ashhab on 06/11/2020.
//  Copyright © 2020 Amin_Second_Test_Project. All rights reserved.
//

import Foundation
import CleanPlatform
import CleanCore

final class ScopeSpecProvierImpl: ScopeSpecProvider {
    func spec(describing scope: Scope) -> ScopeSpec? {
        return MainApplicationScopeSpec()
    }
}
