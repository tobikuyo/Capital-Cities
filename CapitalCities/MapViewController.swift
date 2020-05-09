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
        addAnnotations()

        mapView.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    // MARK: - Methods

    private func addAnnotations() {
        mapView.addAnnotation(capitalController.london)
        mapView.addAnnotation(capitalController.oslo)
        mapView.addAnnotation(capitalController.paris)
        mapView.addAnnotation(capitalController.rome)
        mapView.addAnnotation(capitalController.washington)
    }

}

extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is Capital else { return nil }

        let identifier = "Capital"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)

        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true

            let button = UIButton(type: .detailDisclosure)
            annotationView?.rightCalloutAccessoryView = button
        } else {
            annotationView?.annotation = annotation
        }

        return annotationView
    }

    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let capital = view.annotation as? Capital else { return }

        let placeName = capital.title
        let placeInfo = capital.info

        let alert = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
