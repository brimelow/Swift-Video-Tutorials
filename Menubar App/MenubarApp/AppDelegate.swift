//
//  AppDelegate.swift
//  MenubarApp
//
//  Created by Lee Brimelow on 10/19/14.
//  Copyright (c) 2014 Lee Brimelow. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        let icon = NSImage(named: "icon")
        icon.setTemplate(true)
        
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
    
    @IBAction func toggleClicked(sender: NSMenuItem) {
        
        if(sender.state == NSOnState) {
            sender.state = NSOffState
            let task = NSTask()
            task.launchPath = "/usr/bin/defaults"
            task.arguments = ["write", "com.apple.finder", "AppleShowAllFiles", "NO"]
            task.launch()
            task.waitUntilExit()
            let task2 = NSTask()
            task2.launchPath = "/usr/bin/killall"
            task2.arguments = ["Finder"]
            task2.launch()

        }
        else {
            sender.state = NSOnState
            let task = NSTask()
            task.launchPath = "/usr/bin/defaults"
            task.arguments = ["write", "com.apple.finder", "AppleShowAllFiles", "YES"]
            task.launch()
            task.waitUntilExit()
            let task2 = NSTask()
            task2.launchPath = "/usr/bin/killall"
            task2.arguments = ["Finder"]
            task2.launch()
        }
        
    }

}

