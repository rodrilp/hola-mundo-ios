//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Rodrigo Lopez on 17/10/2019.
//  Copyright © 2019 UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func upsdateButton1(_ sender: UIButton){
        msgLabel.text = "Cibeles"
        
        let center = CLLocationCoordinate2D(latitude: 40.4193359, longitude: -3.6930815)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
       
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateButton2(_ sender: UIButton) {
        msgLabel.text = "ETSIT"
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
        
    @IBAction func updateButton3(_ sender: UIButton) {
        msgLabel.text = "Neptuno"
        
        let center = CLLocationCoordinate2D(latitude: 40.4153, longitude: -3.6942)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func updateMapType(_ sender: UISegmentedControl) {
        let index = segment.selectedSegmentIndex
        switch index {
        case 0:
            mapView.mapType = MKMapType.standard
        case 1:
            mapView.mapType = MKMapType.satellite
        case 2:
            mapView.mapType = MKMapType.hybrid
        default:
            mapView.mapType = MKMapType.standard
        }
    }
}

