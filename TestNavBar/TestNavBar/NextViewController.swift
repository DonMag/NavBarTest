//
//  NextViewController.swift
//  TestNavBar
//
//  Created by Don Mag on 11/21/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
	
	let btnA = UIBarButtonItem.init(
		title: "<",
		style: UIBarButtonItemStyle.plain,
		target: nil,
		action: nil
	)
	
	let btnR = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.bookmarks,
	                                target: nil,
	                                action: nil
	)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
		
		let v  = UIView()
		v.backgroundColor = UIColor.green
		
		// add your views and set up all the constraints
		let imageView = UIImageView(image: UIImage(named: "fish"))
		imageView.translatesAutoresizingMaskIntoConstraints = false
		imageView.backgroundColor = UIColor.red
		v.addSubview(imageView)
		imageView.leadingAnchor.constraint(equalTo: v.leadingAnchor, constant: 2).isActive = true
		imageView.topAnchor.constraint(equalTo: v.topAnchor, constant: 2).isActive = true
		imageView.bottomAnchor.constraint(equalTo: v.bottomAnchor, constant: -2).isActive = true
		imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
		
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Test navbar text"
		label.backgroundColor = UIColor.blue
		v.addSubview(label)
		label.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 2).isActive = true
		label.topAnchor.constraint(equalTo: v.topAnchor, constant: 2).isActive = true
		label.bottomAnchor.constraint(equalTo: v.bottomAnchor, constant: -2).isActive = true
		label.trailingAnchor.constraint(equalTo: v.trailingAnchor, constant: -2).isActive = true
		navigationItem.titleView = v
		
		// use Autoresizing Mask
		v.translatesAutoresizingMaskIntoConstraints = true
		// we *want* the custom title view to stretch to the proper width
		v.autoresizingMask = .flexibleWidth
		// frame width will auto-adjust
		v.frame = CGRect(x: 0, y: 0, width: 1024, height: 30)
		
		navigationItem.leftBarButtonItem = btnA
		navigationItem.rightBarButtonItem = btnR
		
	}
	
}
