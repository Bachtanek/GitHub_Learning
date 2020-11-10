//
//  OnboardingView.swift
//  GitHub_Learning
//
//  Created by Amin Ashhab on 09/11/2020.
//  Copyright © 2020 Amin_Second_Test_Project. All rights reserved.
//

import Foundation
import CleanCore
import CleanPlatform

protocol OnboardingView: View {
    func setPages(_ pages: [OnboardingPageViewModel])
    func setNumberOfPagesControls(_ controls: Int)
    func setSelectedPageControlFor(_ index: Int)
    func setPageTo(_ index: Int)
    func setButtonTitle(_ title: String)
}
