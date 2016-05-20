//
//  ViewController.swift
//  AppTest
//
//  Created by 吳天元 on 5/20/16.
//  Copyright © 2016 吳天元. All rights reserved.
//

import UIKit
import GoogleMaps
import SwiftyJSON

class ViewController: UIViewController {
    var mapView: GMSMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.mapView = GMSMapView()
        self.mapView.frame = self.view.frame
        self.view.addSubview(self.mapView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

