//
//  SecondViewController.swift
//  CKNavigationExample
//
//  Created by Charles Kenney on 10/16/17.
//  Copyright © 2017 Charles Kenney. All rights reserved.
//

import Foundation
import Cocoa
import CKNavigation

class SecondViewController: CKNavigatableViewController {
        
    let label: NSTextField = {
        let label = NSTextField(string: "Second Controller")
        label.drawsBackground = false
        label.isBordered = false
        label.alignment = .center
        label.font = NSFont(name: "Helvetica Neue Thin", size: 30)
        label.isEditable = false
        label.isSelectable = false
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button: NSButton = {
        let button = NSButton(title: "back", target: nil, action: nil)
        button.font = NSFont(name: "Helvetica Neue Thin", size: 20)
        button.layer?.backgroundColor = NSColor.white.withAlphaComponent(0.5).cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func loadView() {
        // init view
        self.view = NSView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // setup views
        addViews()
        setupLabel()
        setupButton()
    }
    
    func addViews() {
        view.addSubview(label)
        view.addSubview(button)
    }
    
    func setupLabel() {
        // add constraints to label
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label.widthAnchor.constraint(equalToConstant: 400).isActive = true
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    func setupButton() {
        // set target and action
        button.target = self
        button.action = #selector(nextViewController(_:))
        // add constraints to button
        button.heightAnchor.constraint(equalToConstant: 25).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 100).isActive = true
    }
    
    @objc func nextViewController(_ sender: Any?) {
        navigationController?.popViewController()
    }
}

