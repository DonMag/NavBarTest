//
//  ViewController.swift
//  TestNavBar
//
//  Created by Don Mag on 11/21/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBAction func codePushTapped(_ sender: Any) {
		
		if let vc = storyboard?.instantiateViewController(withIdentifier: "NextVC") as? NextViewController {
			navigationController?.pushViewController(vc, animated: true)
		}
		
	}

}

