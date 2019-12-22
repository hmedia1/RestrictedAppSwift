//
//  AppDelegate.swift
//  RestrictedAppSwift
//
//  Created by user on 21/12/19.
//  Copyright © 2019 hmedia. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!

	func applicationDidFinishLaunching(_ aNotification: Notification) {

		//let theMainAppBundle = Bundle.main.bundlePath
		//let theChildAppBundle = theMainAppBundle + ("/relative/path/to/app.app")

		let theChildAppBundle = Bundle.main.path(forResource: "WebView.app",ofType:nil) ?? ""
		let childBundleExecutable = Bundle(path: theChildAppBundle)?.executablePath
		//NSLog(childBundleExecutable!)

		Process.launchedProcess(launchPath: childBundleExecutable ?? "", arguments: [""])
		NSApp.terminate(self)

	}
	func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}
}
