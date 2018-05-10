//
//  InitialViewController.swift
//  Battleship
//
//  Created by Alec Osborne on 5/10/18.
//  Copyright © 2018 UnInfamous Games. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupInitialView()
    }
    
    
    // MARK: - Properties
    let playerSegmentedController = UISegmentedControl(items: ["Blue Player", "Switch Players", "Red Player"])
    let backgroundView = UIView()
    let battleLabel = UILabel()
    let shipLabel = UILabel()
    let boardBorderView = UIView()
    let boardInsideView = UIView()
    let boardA1Button = UIButton()
    let boardA2Button = UIButton()
    let boardA3Button = UIButton()
    let boardB1Button = UIButton()
    let boardB2Button = UIButton()
    let boardB3Button = UIButton()
    let boardC1Button = UIButton()
    let boardC2Button = UIButton()
    let boardC3Button = UIButton()
    
    
    // MARK: - 	Methods
    func setupInitialView() {
        
        // Background
        backgroundView.backgroundColor = UIColor.black
        view.addSubview(backgroundView)
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        backgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        backgroundView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor).isActive = true
        
    
        
        
        // BattleShip Label
        battleLabel.text = "BATTLE"
        battleLabel.textAlignment = .center
        battleLabel.textColor = UIColor.white
        battleLabel.font = UIFont(name: "Academy Engraved LET", size: 96)
        battleLabel.adjustsFontSizeToFitWidth = true
        
        backgroundView.addSubview(battleLabel)
        
        battleLabel.translatesAutoresizingMaskIntoConstraints = false
        battleLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 4).isActive = true
        battleLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        battleLabel.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.95).isActive = true
        battleLabel.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        
        shipLabel.text = "SHIP"
        shipLabel.textAlignment = .center
        shipLabel.textColor = UIColor.white
        shipLabel.font = UIFont(name: "Academy Engraved LET", size: 96)
        shipLabel.adjustsFontSizeToFitWidth = true
        
        backgroundView.addSubview(shipLabel)
        
        shipLabel.translatesAutoresizingMaskIntoConstraints = false
        shipLabel.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 40).isActive = true
        shipLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        shipLabel.widthAnchor.constraint(equalTo: backgroundView.widthAnchor).isActive = true
        shipLabel.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        
        // Board Border View
        boardBorderView.backgroundColor = UIColor.darkGray
        boardBorderView.layer.cornerRadius = 25
        
        backgroundView.addSubview(boardBorderView)
        
        boardBorderView.translatesAutoresizingMaskIntoConstraints = false
        boardBorderView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor).isActive = true
        boardBorderView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        boardBorderView.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 0.9).isActive = true
        boardBorderView.heightAnchor.constraint(equalTo: boardBorderView.widthAnchor).isActive = true
        
        
        // Board Inside View
        boardInsideView.backgroundColor = UIColor.lightGray
        
        boardBorderView.addSubview(boardInsideView)
        
        boardInsideView.translatesAutoresizingMaskIntoConstraints = false
        boardInsideView.centerXAnchor.constraint(equalTo: boardBorderView.centerXAnchor).isActive = true
        boardInsideView.centerYAnchor.constraint(equalTo: boardBorderView.centerYAnchor).isActive = true
        boardInsideView.widthAnchor.constraint(equalTo: boardBorderView.widthAnchor, multiplier: 0.85).isActive = true
        boardInsideView.heightAnchor.constraint(equalTo: boardBorderView.heightAnchor, multiplier: 0.85).isActive = true
        
        
        // A1
        boardA1Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardA1Button)
        
        boardA1Button.translatesAutoresizingMaskIntoConstraints = false
        boardA1Button.topAnchor.constraint(equalTo: boardInsideView.topAnchor).isActive = true
        boardA1Button.leftAnchor.constraint(equalTo: boardInsideView.leftAnchor).isActive = true
        boardA1Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33, constant: 0).isActive = true
        boardA1Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33, constant: 0).isActive = true
        
        
        // A2
        boardA2Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardA2Button)
        
        boardA2Button.translatesAutoresizingMaskIntoConstraints = false
        boardA2Button.topAnchor.constraint(equalTo: boardInsideView.topAnchor).isActive = true
        boardA2Button.centerXAnchor.constraint(equalTo: boardInsideView.centerXAnchor).isActive = true
        boardA2Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardA2Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // A3
        boardA3Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardA3Button)
        
        boardA3Button.translatesAutoresizingMaskIntoConstraints = false
        boardA3Button.topAnchor.constraint(equalTo: boardInsideView.topAnchor).isActive = true
        boardA3Button.rightAnchor.constraint(equalTo: boardInsideView.rightAnchor).isActive = true
        boardA3Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardA3Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // B1
        boardB1Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardB1Button)
        
        boardB1Button.translatesAutoresizingMaskIntoConstraints = false
        boardB1Button.centerYAnchor.constraint(equalTo: boardInsideView.centerYAnchor).isActive = true
        boardB1Button.leftAnchor.constraint(equalTo: boardInsideView.leftAnchor).isActive = true
        boardB1Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardB1Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // B2
        boardB2Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardB2Button)
        
        boardB2Button.translatesAutoresizingMaskIntoConstraints = false
        boardB2Button.centerYAnchor.constraint(equalTo: boardInsideView.centerYAnchor).isActive = true
        boardB2Button.centerXAnchor.constraint(equalTo: boardInsideView.centerXAnchor).isActive = true
        boardB2Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardB2Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // B3
        boardB3Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardB3Button)
        
        boardB3Button.translatesAutoresizingMaskIntoConstraints = false
        boardB3Button.centerYAnchor.constraint(equalTo: boardInsideView.centerYAnchor).isActive = true
        boardB3Button.rightAnchor.constraint(equalTo: boardInsideView.rightAnchor).isActive = true
        boardB3Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardB3Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // C1
        boardC1Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardC1Button)
        
        boardC1Button.translatesAutoresizingMaskIntoConstraints = false
        boardC1Button.bottomAnchor.constraint(equalTo: boardInsideView.bottomAnchor).isActive = true
        boardC1Button.leftAnchor.constraint(equalTo: boardInsideView.leftAnchor).isActive = true
        boardC1Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardC1Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // C2
        boardC2Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardC2Button)
        
        boardC2Button.translatesAutoresizingMaskIntoConstraints = false
        boardC2Button.bottomAnchor.constraint(equalTo: boardInsideView.bottomAnchor).isActive = true
        boardC2Button.centerXAnchor.constraint(equalTo: boardInsideView.centerXAnchor).isActive = true
        boardC2Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardC2Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // C3
        boardC3Button.backgroundColor = UIColor.white
        
        boardInsideView.addSubview(boardC3Button)
        
        boardC3Button.translatesAutoresizingMaskIntoConstraints = false
        boardC3Button.bottomAnchor.constraint(equalTo: boardInsideView.bottomAnchor).isActive = true
        boardC3Button.rightAnchor.constraint(equalTo: boardInsideView.rightAnchor).isActive = true
        boardC3Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardC3Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
    }
}
