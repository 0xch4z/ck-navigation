//
//  AppDelegate.swift
//  CKNavigationExample
//
//  Created by Charles Kenney on 10/16/17.
//  Copyright © 2017 Charles Kenney. All rights reserved.
//

import Foundation
import Cocoa
import CKNavigation

class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {
    
    var navigationController = CKNavigationController()
    
    let controller = ViewController()
    
    let window: NSWindow = {
        // create window instance
        let content = NSRect(x: 0, y: 0,
                             width: NSScreen.main!.frame.width / 2,
                             height: NSScreen.main!.frame.height / 2)
        let mask: [NSWindow.StyleMask] = [.titled, .resizable, .closable,]
        let window = NSWindow(contentRect: content,
                              styleMask: .titled,
                              backing: NSWindow.BackingStoreType.buffered,
                              defer: false)
        // style window
        window.styleMask = [.titled, .resizable, .closable, .miniaturizable]
        window.title = "CKNavigation Demo"
        window.isMovableByWindowBackground = true
        window.titlebarAppearsTransparent = true
        window.appearance = NSAppearance(named: .vibrantLight)
        // make key
        window.makeKeyAndOrderFront(nil)
        return window
    }()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.delegate = self
        // init navigation controller
        navigationController.setRootViewController(controller)
        window.contentView?.addSubview(navigationController.view)
        navigationController.view.frame = NSRect(x: 0, y: 0, width: window.frame.size.width, height: window.frame.size.height)
        navigationController.view.wantsLayer = true
    }
    
    func windowWillResize(_ sender: NSWindow, to frameSize: NSSize) -> NSSize {
        // resizes view on window resize
        navigationController.view.frame = NSRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height)
        return frameSize
    }
    
    func applicationWillTerminate(_ aNotification: Notification) { }
}
