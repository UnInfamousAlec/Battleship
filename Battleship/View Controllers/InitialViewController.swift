//
//  InitialViewController.swift
//  Battleship
//
//  Created by Alec Osborne on 5/10/18.
//  Copyright © 2018 UnInfamous Games. All rights reserved.
//

import UIKit
import Darwin

class InitialViewController: UIViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupInitialView()
        moveShips()
    }
    
    
    // MARK: - Properties
    var shipCount = 2
    var shotCount = 5
    var shipLocations = [1,2,3,4,5,6,7,8,9]
    
    let backgroundView = UIView()
    let battleLabel = UILabel()
    let shipLabel = UILabel()
    
    let shipsRemainingView = UIView()
    let shipsRemainingLabel = UILabel()
    var shipsRemainingCountLabel = UILabel()
    let shotsRemainingView = UIView()
    let shotsRemainingLabel = UILabel()
    var shotsRemainingCountLabel = UILabel()
    
    let boardBorderView = UIView()
    let boardInsideView = UIView()
    
    let aLabel = UILabel()
    let bLabel = UILabel()
    let cLabel = UILabel()
    let oneLabel = UILabel()
    let twoLabel = UILabel()
    let threeLabel = UILabel()
    
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
        
        
        // Ships Remaining
        shipsRemainingView.backgroundColor = UIColor.red
        shipsRemainingView.layer.cornerRadius = 5
        
        boardBorderView.addSubview(shipsRemainingView)
        
        shipsRemainingView.translatesAutoresizingMaskIntoConstraints = false
        shipsRemainingView.topAnchor.constraint(equalTo: boardBorderView.topAnchor, constant: -85).isActive = true
        shipsRemainingView.centerXAnchor.constraint(equalTo: boardBorderView.centerXAnchor).isActive = true
        shipsRemainingView.widthAnchor.constraint(equalTo: boardBorderView.widthAnchor).isActive = true
        shipsRemainingView.bottomAnchor.constraint(equalTo: boardBorderView.topAnchor, constant: -20).isActive = true
        
        
        shipsRemainingLabel.text = "Ships Remaining:"
        shipsRemainingLabel.textAlignment = .left
        shipsRemainingLabel.font = UIFont(name: "Academy Engraved LET", size: 30)
        
        shipsRemainingView.addSubview(shipsRemainingLabel)
        
        shipsRemainingLabel.translatesAutoresizingMaskIntoConstraints = false
        shipsRemainingLabel.topAnchor.constraint(equalTo: shipsRemainingView.topAnchor, constant: 20).isActive = true
        shipsRemainingLabel.leftAnchor.constraint(equalTo: shipsRemainingView.leftAnchor, constant: 35).isActive = true
        shipsRemainingLabel.widthAnchor.constraint(equalTo: shipsRemainingView.widthAnchor, multiplier: 0.8).isActive = true
        shipsRemainingLabel.heightAnchor.constraint(equalTo: shipsRemainingView.heightAnchor, multiplier: 0.6).isActive = true
        
        
        shipsRemainingCountLabel.text = "\(shipCount)"
        shipsRemainingCountLabel.textAlignment = .right
        shipsRemainingCountLabel.font = UIFont(name: "Academy Engraved LET", size: 30)
        
        shipsRemainingView.addSubview(shipsRemainingCountLabel)
        
        shipsRemainingCountLabel.translatesAutoresizingMaskIntoConstraints = false
        shipsRemainingCountLabel.topAnchor.constraint(equalTo: shipsRemainingView.topAnchor, constant: 20).isActive = true
        shipsRemainingCountLabel.rightAnchor.constraint(equalTo: shipsRemainingView.rightAnchor, constant: -35).isActive = true
        shipsRemainingCountLabel.widthAnchor.constraint(equalTo: shipsRemainingView.widthAnchor, multiplier: 0.4).isActive = true
        shipsRemainingCountLabel.heightAnchor.constraint(equalTo: shipsRemainingView.heightAnchor, multiplier: 0.6).isActive = true
        
        
        
        // Shots Remaining
        shotsRemainingView.backgroundColor = UIColor.blue
        shotsRemainingView.layer.cornerRadius = 5
        
        boardBorderView.addSubview(shotsRemainingView)
        
        shotsRemainingView.translatesAutoresizingMaskIntoConstraints = false
        shotsRemainingView.topAnchor.constraint(equalTo: boardBorderView.bottomAnchor, constant: 20).isActive = true
        shotsRemainingView.centerXAnchor.constraint(equalTo: boardBorderView.centerXAnchor).isActive = true
        shotsRemainingView.widthAnchor.constraint(equalTo: boardBorderView.widthAnchor).isActive = true
        shotsRemainingView.bottomAnchor.constraint(equalTo: boardBorderView.bottomAnchor, constant: 85).isActive = true
        
        
        shotsRemainingLabel.text = "Shots Remaining:"
        shotsRemainingLabel.textAlignment = .left
        shotsRemainingLabel.textColor = UIColor.white
        shotsRemainingLabel.font = UIFont(name: "Academy Engraved LET", size: 30)
        
        shotsRemainingView.addSubview(shotsRemainingLabel)
        
        shotsRemainingLabel.translatesAutoresizingMaskIntoConstraints = false
        shotsRemainingLabel.topAnchor.constraint(equalTo: shotsRemainingView.topAnchor, constant: 20).isActive = true
        shotsRemainingLabel.leftAnchor.constraint(equalTo: shotsRemainingView.leftAnchor, constant: 35).isActive = true
        shotsRemainingLabel.widthAnchor.constraint(equalTo: shotsRemainingView.widthAnchor, multiplier: 0.8).isActive = true
        shotsRemainingLabel.heightAnchor.constraint(equalTo: shotsRemainingView.heightAnchor, multiplier: 0.6).isActive = true
        
        shotsRemainingCountLabel.text = "\(shotCount)"
        shotsRemainingCountLabel.textAlignment = .right
        shotsRemainingCountLabel.textColor = UIColor.white
        shotsRemainingCountLabel.font = UIFont(name: "Academy Engraved LET", size: 30)
        
        shotsRemainingView.addSubview(shotsRemainingCountLabel)
        
        shotsRemainingCountLabel.translatesAutoresizingMaskIntoConstraints = false
        shotsRemainingCountLabel.topAnchor.constraint(equalTo: shotsRemainingView.topAnchor, constant: 20).isActive = true
        shotsRemainingCountLabel.rightAnchor.constraint(equalTo: shotsRemainingView.rightAnchor, constant: -35).isActive = true
        shotsRemainingCountLabel.widthAnchor.constraint(equalTo: shotsRemainingView.widthAnchor, multiplier: 0.8).isActive = true
        shotsRemainingCountLabel.heightAnchor.constraint(equalTo: shotsRemainingView.heightAnchor, multiplier: 0.6).isActive = true
        
        
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
        
        
        // A Label
        aLabel.text = "A"
        aLabel.textColor = UIColor.white
        aLabel.textAlignment = .center
        
        boardA1Button.addSubview(aLabel)
        
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.topAnchor.constraint(equalTo: boardA1Button.topAnchor).isActive = true
        aLabel.leftAnchor.constraint(equalTo: boardA1Button.leftAnchor, constant: -25).isActive = true
        aLabel.bottomAnchor.constraint(equalTo: boardA1Button.bottomAnchor).isActive = true
        aLabel.rightAnchor.constraint(equalTo: boardA1Button.leftAnchor).isActive = true
        
        
        // B Label
        bLabel.text = "B"
        bLabel.textColor = UIColor.white
        bLabel.textAlignment = .center
        
        boardB1Button.addSubview(bLabel)
        
        bLabel.translatesAutoresizingMaskIntoConstraints = false
        bLabel.topAnchor.constraint(equalTo: boardB1Button.topAnchor).isActive = true
        bLabel.leftAnchor.constraint(equalTo: boardB1Button.leftAnchor, constant: -25).isActive = true
        bLabel.bottomAnchor.constraint(equalTo: boardB1Button.bottomAnchor).isActive = true
        bLabel.rightAnchor.constraint(equalTo: boardB1Button.leftAnchor).isActive = true
        
        
        // C Label
        cLabel.text = "C"
        cLabel.textColor = UIColor.white
        cLabel.textAlignment = .center
        
        boardC1Button.addSubview(cLabel)
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.topAnchor.constraint(equalTo: boardC1Button.topAnchor).isActive = true
        cLabel.leftAnchor.constraint(equalTo: boardC1Button.leftAnchor, constant: -25).isActive = true
        cLabel.bottomAnchor.constraint(equalTo: boardC1Button.bottomAnchor).isActive = true
        cLabel.rightAnchor.constraint(equalTo: boardC1Button.leftAnchor).isActive = true
        
        
        // 1 Label
        oneLabel.text = "1"
        oneLabel.textColor = UIColor.white
        oneLabel.textAlignment = .center
        
        boardA1Button.addSubview(oneLabel)
        
        oneLabel.translatesAutoresizingMaskIntoConstraints = false
        oneLabel.topAnchor.constraint(equalTo: boardA1Button.topAnchor, constant: -25).isActive = true
        oneLabel.leftAnchor.constraint(equalTo: boardA1Button.leftAnchor).isActive = true
        oneLabel.bottomAnchor.constraint(equalTo: boardA1Button.topAnchor).isActive = true
        oneLabel.rightAnchor.constraint(equalTo: boardA1Button.rightAnchor).isActive = true
        
        
        // 2 Label
        twoLabel.text = "2"
        twoLabel.textColor = UIColor.white
        twoLabel.textAlignment = .center
        
        boardA2Button.addSubview(twoLabel)
        
        twoLabel.translatesAutoresizingMaskIntoConstraints = false
        twoLabel.topAnchor.constraint(equalTo: boardA2Button.topAnchor, constant: -25).isActive = true
        twoLabel.leftAnchor.constraint(equalTo: boardA2Button.leftAnchor).isActive = true
        twoLabel.bottomAnchor.constraint(equalTo: boardA2Button.topAnchor).isActive = true
        twoLabel.rightAnchor.constraint(equalTo: boardA2Button.rightAnchor).isActive = true
        
        
        // 3 Label
        threeLabel.text = "3"
        threeLabel.textColor = UIColor.white
        threeLabel.textAlignment = .center
        
        boardA3Button.addSubview(threeLabel)
        
        threeLabel.translatesAutoresizingMaskIntoConstraints = false
        threeLabel.topAnchor.constraint(equalTo: boardA3Button.topAnchor, constant: -25).isActive = true
        threeLabel.leftAnchor.constraint(equalTo: boardA3Button.leftAnchor).isActive = true
        threeLabel.bottomAnchor.constraint(equalTo: boardA3Button.topAnchor).isActive = true
        threeLabel.rightAnchor.constraint(equalTo: boardA3Button.rightAnchor).isActive = true
        
        
        // A1 Button
        boardA1Button.backgroundColor = UIColor.white
        boardA1Button.addTarget(self, action: #selector(a1ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardA1Button)
        
        boardA1Button.translatesAutoresizingMaskIntoConstraints = false
        boardA1Button.topAnchor.constraint(equalTo: boardInsideView.topAnchor).isActive = true
        boardA1Button.leftAnchor.constraint(equalTo: boardInsideView.leftAnchor).isActive = true
        boardA1Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33, constant: 0).isActive = true
        boardA1Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33, constant: 0).isActive = true
        
        
        // A2 Button
        boardA2Button.backgroundColor = UIColor.white
        boardA2Button.addTarget(self, action: #selector(a2ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardA2Button)
        
        boardA2Button.translatesAutoresizingMaskIntoConstraints = false
        boardA2Button.topAnchor.constraint(equalTo: boardInsideView.topAnchor).isActive = true
        boardA2Button.centerXAnchor.constraint(equalTo: boardInsideView.centerXAnchor).isActive = true
        boardA2Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardA2Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // A3 Button
        boardA3Button.backgroundColor = UIColor.white
        boardA3Button.addTarget(self, action: #selector(a3ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardA3Button)
        
        boardA3Button.translatesAutoresizingMaskIntoConstraints = false
        boardA3Button.topAnchor.constraint(equalTo: boardInsideView.topAnchor).isActive = true
        boardA3Button.rightAnchor.constraint(equalTo: boardInsideView.rightAnchor).isActive = true
        boardA3Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardA3Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // B1 Button
        boardB1Button.backgroundColor = UIColor.white
        boardB1Button.addTarget(self, action: #selector(b1ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardB1Button)
        
        boardB1Button.translatesAutoresizingMaskIntoConstraints = false
        boardB1Button.centerYAnchor.constraint(equalTo: boardInsideView.centerYAnchor).isActive = true
        boardB1Button.leftAnchor.constraint(equalTo: boardInsideView.leftAnchor).isActive = true
        boardB1Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardB1Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // B2 Button
        boardB2Button.backgroundColor = UIColor.white
        boardB2Button.addTarget(self, action: #selector(b2ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardB2Button)
        
        boardB2Button.translatesAutoresizingMaskIntoConstraints = false
        boardB2Button.centerYAnchor.constraint(equalTo: boardInsideView.centerYAnchor).isActive = true
        boardB2Button.centerXAnchor.constraint(equalTo: boardInsideView.centerXAnchor).isActive = true
        boardB2Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardB2Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // B3 Button
        boardB3Button.backgroundColor = UIColor.white
        boardB3Button.addTarget(self, action: #selector(b3ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardB3Button)
        
        boardB3Button.translatesAutoresizingMaskIntoConstraints = false
        boardB3Button.centerYAnchor.constraint(equalTo: boardInsideView.centerYAnchor).isActive = true
        boardB3Button.rightAnchor.constraint(equalTo: boardInsideView.rightAnchor).isActive = true
        boardB3Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardB3Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // C1 Button
        boardC1Button.backgroundColor = UIColor.white
        boardC1Button.addTarget(self, action: #selector(c1ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardC1Button)
        
        boardC1Button.translatesAutoresizingMaskIntoConstraints = false
        boardC1Button.bottomAnchor.constraint(equalTo: boardInsideView.bottomAnchor).isActive = true
        boardC1Button.leftAnchor.constraint(equalTo: boardInsideView.leftAnchor).isActive = true
        boardC1Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardC1Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // C2 Button
        boardC2Button.backgroundColor = UIColor.white
        boardC2Button.addTarget(self, action: #selector(c2ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardC2Button)
        
        boardC2Button.translatesAutoresizingMaskIntoConstraints = false
        boardC2Button.bottomAnchor.constraint(equalTo: boardInsideView.bottomAnchor).isActive = true
        boardC2Button.centerXAnchor.constraint(equalTo: boardInsideView.centerXAnchor).isActive = true
        boardC2Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardC2Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
        
        
        // C3 Button
        boardC3Button.backgroundColor = UIColor.white
        boardC3Button.addTarget(self, action: #selector(c3ShotTaken), for: .touchUpInside)
        
        boardInsideView.addSubview(boardC3Button)
        
        boardC3Button.translatesAutoresizingMaskIntoConstraints = false
        boardC3Button.bottomAnchor.constraint(equalTo: boardInsideView.bottomAnchor).isActive = true
        boardC3Button.rightAnchor.constraint(equalTo: boardInsideView.rightAnchor).isActive = true
        boardC3Button.widthAnchor.constraint(equalTo: boardInsideView.widthAnchor, multiplier: 0.33).isActive = true
        boardC3Button.heightAnchor.constraint(equalTo: boardInsideView.heightAnchor, multiplier: 0.33).isActive = true
    }
    
    @objc func a1ShotTaken() {
        
        if boardA1Button.isEnabled {
            print("A1 selected")
            
            if shipLocations.first == 1 {
                
                boardA1Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 1 {
                
                boardA1Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardA1Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    @objc func a2ShotTaken() {
        
        if boardA2Button.isEnabled {
            print("A2 selected")
            
            if shipLocations.first == 2 {
                
                boardA2Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 2 {
                
                boardA2Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardA2Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    @objc func a3ShotTaken() {
        
        if boardA3Button.isEnabled {
            print("A3 selected")
            
            if shipLocations.first == 3 {
                
                boardA3Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 3 {
                
                boardA3Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardA3Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    @objc func b1ShotTaken() {
        
        if boardB1Button.isEnabled {
            print("B1 selected")
            
            if shipLocations.first == 4 {
                
                boardB1Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 4 {
                
                boardB1Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardB1Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    @objc func b2ShotTaken() {
        
        if boardB2Button.isEnabled {
            print("B2 selected")
            
            if shipLocations.first == 5 {
                
                boardB2Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 5 {
                
                boardB2Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardB2Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    @objc func b3ShotTaken() {
        
        if boardB3Button.isEnabled {
            print("B3 selected")
            
            if shipLocations.first == 6 {
                
                boardB3Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 6 {
                
                boardB3Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardB3Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    @objc func c1ShotTaken() {
        
        if boardC1Button.isEnabled {
            print("C1 selected")
            
            if shipLocations.first == 7 {
                
                boardC1Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 7 {
                
                boardC1Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardC1Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    @objc func c2ShotTaken() {
        
        if boardC2Button.isEnabled {
            print("C2 selected")
            
            if shipLocations.first == 8 {
                
                boardC2Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 8 {
                
                boardC2Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardC2Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    @objc func c3ShotTaken() {
        
        if boardC3Button.isEnabled {
            print("C3 selected")
            
            if shipLocations.first == 9 {
                
                boardC3Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else if shipLocations.last == 9 {
                
                boardC3Button.backgroundColor = UIColor.red
                
                shipCount -= 1
                shotCount -= 1
                shipsRemainingCountLabel.text = "\(shipCount)"
                shotsRemainingCountLabel.text = "\(shotCount)"
                
            } else {
                
                boardC3Button.backgroundColor = UIColor.blue
                
                shotCount -= 1
                shotsRemainingCountLabel.text = "\(shotCount)"
            }
            
            if shotCount == 0 && shipCount > 0 {
                youLost()
            } else if shotCount == 1 && shipCount == 2 {
                youLost()
            } else if shipCount == 0 {
                youWon()
            }
        }
    }
    
    func randomInt(min: Int, max:Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }
    
    func youWon() {
        print("You Won!!!")
        
        let alertController = UIAlertController(title: "You Won!!!", message: "Congrats, you don't completely suck at life!", preferredStyle: .alert)
        
        let resetButton = UIAlertAction(title: "Play Again!", style: .cancel) { (action) in
            self.reset()
        }
        
        alertController.addAction(resetButton)
        
        present(alertController, animated: true)
    }
    
    func youLost() {
        print("You Lost...")
        
        let alertController = UIAlertController(title: "You Lost...", message: "Wow, you completely suck...", preferredStyle: .alert)
        
        let resetButton = UIAlertAction(title: "Try Harder", style: .cancel) { (action) in
            self.reset()
        }
        
        alertController.addAction(resetButton)
        
        present(alertController, animated: true)
    }
    
    func reset() {
        shipCount = 2
        shipsRemainingCountLabel.text = "\(shipCount)"
        shotCount = 5
        shotsRemainingCountLabel.text = "\(shotCount)"
        
        boardA1Button.isSelected = false
        boardA1Button.backgroundColor = UIColor.white
        boardA2Button.isSelected = false
        boardA2Button.backgroundColor = UIColor.white
        boardA3Button.isSelected = false
        boardA3Button.backgroundColor = UIColor.white
        boardB1Button.isSelected = false
        boardB1Button.backgroundColor = UIColor.white
        boardB2Button.isSelected = false
        boardB2Button.backgroundColor = UIColor.white
        boardB3Button.isSelected = false
        boardB3Button.backgroundColor = UIColor.white
        boardC1Button.isSelected = false
        boardC1Button.backgroundColor = UIColor.white
        boardC2Button.isSelected = false
        boardC2Button.backgroundColor = UIColor.white
        boardC3Button.isSelected = false
        boardC3Button.backgroundColor = UIColor.white
        
        moveShips()
    }
    
    func moveShips() {
        shipLocations.shuffle()
        print(shipLocations)
    }
}


extension Array {
    mutating func shuffle() {
        for _ in 0..<10 {
            sort {
                (_,_) in arc4random() < arc4random()
            }
        }
    }
}
