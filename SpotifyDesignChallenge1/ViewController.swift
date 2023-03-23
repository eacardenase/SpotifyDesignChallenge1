//
//  ViewController.swift
//  SpotifyDesignChallenge1
//
//  Created by Edwin Cardenas on 3/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        setupViews()
    }
}

extension ViewController {
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    func setupViews() {
        let offlineLabel = Factory.makeLabel(withText: "Offline")
        let offlineSwitch = Factory.makeSwtich(isOn: false)
        let offlineSecondaryLabel = Factory.makeSecondaryLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let progressViewStackView = Factory.makeStackView(withOrientation: .horizontal)
        let crossfadeLabel = Factory.makeTertiaryLabel(withText: "Crossfade")
        let crossfadeMinLabel = Factory.makeSecondaryLabel(withText: "0s")
        let crossfadeMaxLabel = Factory.makeSecondaryLabel(withText: "12s")
        let crossfadeProgressView = Factory.makeProgressView()
        
        let playbackStackView = Factory.makeStackView(withOrientation: .horizontal)
        let gaplessPlaybackLabel = Factory.makeLabel(withText: "Gapless Playback")
        let gaplessPlaybackSwitch = Factory.makeSwtich(isOn: true)
        
        let hideSongsStackView = Factory.makeStackView(withOrientation: .horizontal)
        let hideSongsLabel = Factory.makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = Factory.makeSwtich(isOn: true)
        
        let enableNormalizationStackView = Factory.makeStackView(withOrientation: .horizontal)
        let enableNormalizationLabel = Factory.makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = Factory.makeSwtich(isOn: true)
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSecondaryLabel)
        
        view.addSubview(crossfadeLabel)
        progressViewStackView.addArrangedSubview(crossfadeMinLabel)
        progressViewStackView.addArrangedSubview(crossfadeProgressView)
        progressViewStackView.addArrangedSubview(crossfadeMaxLabel)
        view.addSubview(progressViewStackView)
        
        playbackStackView.addArrangedSubview(gaplessPlaybackLabel)
        playbackStackView.addArrangedSubview(gaplessPlaybackSwitch)
        view.addSubview(playbackStackView)
        
        hideSongsStackView.addArrangedSubview(hideSongsLabel)
        hideSongsStackView.addArrangedSubview(hideSongsSwitch)
        view.addSubview(hideSongsStackView)
        
        enableNormalizationStackView.addArrangedSubview(enableNormalizationLabel)
        enableNormalizationStackView.addArrangedSubview(enableNormalizationSwitch)
        view.addSubview(enableNormalizationStackView)
        
        // offlineLabel
        NSLayoutConstraint.activate([
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            offlineLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin)
        ])
        
        // offlineSwitch
        NSLayoutConstraint.activate([
            offlineSwitch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            offlineSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: margin * -1)
        ])
        
        // offlineSecondaryLabel
        NSLayoutConstraint.activate([
            offlineSecondaryLabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin),
            offlineSecondaryLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            offlineSecondaryLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: margin * -1)
        ])
        
        // crossfadeLabel
        NSLayoutConstraint.activate([
            crossfadeLabel.topAnchor.constraint(equalTo: offlineSecondaryLabel.bottomAnchor, constant: spacing),
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // progressViewStackView
        NSLayoutConstraint.activate([
            progressViewStackView.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing),
            progressViewStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            progressViewStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: margin * -1)
        ])
        
        // playbackStackView
        NSLayoutConstraint.activate([
            playbackStackView.topAnchor.constraint(equalTo: progressViewStackView.bottomAnchor, constant: spacing),
            playbackStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            playbackStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: margin * -1)
        ])
        
        // hideSongsStackView
        NSLayoutConstraint.activate([
            hideSongsStackView.topAnchor.constraint(equalTo: playbackStackView.bottomAnchor, constant: spacing),
            hideSongsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            hideSongsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: margin * -1)
        ])
        
        // enableNormalizationStackView
        NSLayoutConstraint.activate([
            enableNormalizationStackView.topAnchor.constraint(equalTo: hideSongsStackView.bottomAnchor, constant: spacing),
            enableNormalizationStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            enableNormalizationStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: margin * -1)
        ])
    }
}
