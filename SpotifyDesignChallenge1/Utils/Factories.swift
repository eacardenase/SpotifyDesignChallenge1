//
//  Factories.swift
//  SpotifyDesignChallenge1
//
//  Created by Edwin Cardenas on 3/23/23.
//

import UIKit

class Factory {
    static func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        
        return label
    }
    
    static func makeSecondaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 13)
        label.numberOfLines = 0
        
        return label
    }
    
    static func makeTertiaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        
        return label
    }
    
    static func makeSwtich(isOn: Bool) -> UISwitch {
        let theSwitch = UISwitch()
        
        theSwitch.translatesAutoresizingMaskIntoConstraints = false
        theSwitch.isOn = isOn
        
        return theSwitch
    }
    
    static func makeProgressView() -> UIProgressView {
//        let progressView = UIProgressView(progressViewStyle: .default)
        let progressView = UIProgressView(progressViewStyle: .default)
        
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.tintColor = .gray
        
        return progressView
    }
    
    static func makeStackView(withOrientation axis: NSLayoutConstraint.Axis) -> UIStackView {
        let stackView = UIStackView()
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = axis
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 8.0
        
        return stackView
    }
}
