//
//  ViewController.swift
//  SwiftAssetsPickerController
//
//  Created by Maxim Bilan on 5/25/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func openAssetsAction(_ sender: UIButton) {
		let rootListAssets = AssetsPickerController()
		rootListAssets.didSelectAssets = {(assets: Array<PHAsset?>) -> () in
			print(assets)
		}
		let navigationController = UINavigationController(rootViewController: rootListAssets)
		present(navigationController, animated: true, completion: nil)
	}
	
}

