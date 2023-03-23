//
//  NSLayoutConstraint+Utils.swift
//  SpotifyDesignChallenge1
//
//  Created by Edwin Cardenas on 3/23/23.
//

import UIKit

public extension NSLayoutConstraint {
    @objc func setActiveBreakable(priority: UILayoutPriority = UILayoutPriority(900)) {
        self.priority = priority
        isActive = true
    }
}
