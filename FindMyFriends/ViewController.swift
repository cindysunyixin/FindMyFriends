//
//  ViewController.swift
//  FindMyFriends
//
//  Created by Yixin Sun on 2/13/16.
//  Copyright © 2016 Yixin Sun. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate,MKMapViewDelegate {
    @IBOutlet weak var MapView: MKMapView!
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.locationManager.delegate = self
        if CLLocationManager.locationServicesEnabled() {
            if CLLocationManager.authorizationStatus() == .NotDetermined {
                if self.locationManager.respondsToSelector("RequestWhenInUseAuthrorization") {
                    self.locationManager.requestAlwaysAuthorization()
                }
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager:CLLocationManager, didChangeAuthrorizationStatus status: 


}

