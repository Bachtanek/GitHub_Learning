//
//  LoginView.swift
//  GitHub_Learning
//
//  Created by Amin Ashhab on 16/11/2020.
//  Copyright © 2020 Amin_Second_Test_Project. All rights reserved.
//

import Foundation
import CleanCore

protocol LoginView: View {
    func isLoginEnabled(_ enabled: Bool)
}
