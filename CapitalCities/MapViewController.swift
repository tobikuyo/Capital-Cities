//
//  MapViewController.swift
//  CapitalCities
//
//  Created by Tobi Kuyoro on 09/05/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var mapView: MKMapView!

    // MARK: - Properties

    let capitalController = CapitalController()

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.addAnnotation(capitalController.london)
        mapView.addAnnotation(capitalController.oslo)
        mapView.addAnnotation(capitalController.paris)
        mapView.addAnnotation(capitalController.rome)
        mapView.addAnnotation(capitalController.washington)
    }

    // MARK: - Methods
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
